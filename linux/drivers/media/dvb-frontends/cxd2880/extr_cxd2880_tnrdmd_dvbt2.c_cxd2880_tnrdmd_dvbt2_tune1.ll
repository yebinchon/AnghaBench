; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd_dvbt2.c_cxd2880_tnrdmd_dvbt2_tune1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd_dvbt2.c_cxd2880_tnrdmd_dvbt2_tune1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd = type { i64, i64, %struct.cxd2880_tnrdmd*, i32 }
%struct.cxd2880_dvbt2_tune_param = type { i64, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_DIVERMODE_SUB = common dso_local global i64 0, align 8
@CXD2880_TNRDMD_STATE_SLEEP = common dso_local global i64 0, align 8
@CXD2880_TNRDMD_STATE_ACTIVE = common dso_local global i64 0, align 8
@CXD2880_TNRDMD_DIVERMODE_MAIN = common dso_local global i64 0, align 8
@CXD2880_DVBT2_PROFILE_ANY = common dso_local global i64 0, align 8
@ENOTTY = common dso_local global i32 0, align 4
@CXD2880_DTV_SYS_DVBT2 = common dso_local global i32 0, align 4
@CXD2880_DVBT2_TUNE_PARAM_PLPID_AUTO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxd2880_tnrdmd_dvbt2_tune1(%struct.cxd2880_tnrdmd* %0, %struct.cxd2880_dvbt2_tune_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cxd2880_tnrdmd*, align 8
  %5 = alloca %struct.cxd2880_dvbt2_tune_param*, align 8
  %6 = alloca i32, align 4
  store %struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd** %4, align 8
  store %struct.cxd2880_dvbt2_tune_param* %1, %struct.cxd2880_dvbt2_tune_param** %5, align 8
  %7 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %8 = icmp ne %struct.cxd2880_tnrdmd* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.cxd2880_dvbt2_tune_param*, %struct.cxd2880_dvbt2_tune_param** %5, align 8
  %11 = icmp ne %struct.cxd2880_dvbt2_tune_param* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9, %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %152

15:                                               ; preds = %9
  %16 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %17 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_SUB, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %152

24:                                               ; preds = %15
  %25 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %26 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CXD2880_TNRDMD_STATE_SLEEP, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %32 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CXD2880_TNRDMD_STATE_ACTIVE, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %152

39:                                               ; preds = %30, %24
  %40 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %41 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_MAIN, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load %struct.cxd2880_dvbt2_tune_param*, %struct.cxd2880_dvbt2_tune_param** %5, align 8
  %47 = getelementptr inbounds %struct.cxd2880_dvbt2_tune_param, %struct.cxd2880_dvbt2_tune_param* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @CXD2880_DVBT2_PROFILE_ANY, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @ENOTTY, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %152

54:                                               ; preds = %45, %39
  %55 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %56 = load i32, i32* @CXD2880_DTV_SYS_DVBT2, align 4
  %57 = load %struct.cxd2880_dvbt2_tune_param*, %struct.cxd2880_dvbt2_tune_param** %5, align 8
  %58 = getelementptr inbounds %struct.cxd2880_dvbt2_tune_param, %struct.cxd2880_dvbt2_tune_param* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.cxd2880_dvbt2_tune_param*, %struct.cxd2880_dvbt2_tune_param** %5, align 8
  %61 = getelementptr inbounds %struct.cxd2880_dvbt2_tune_param, %struct.cxd2880_dvbt2_tune_param* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @cxd2880_tnrdmd_common_tune_setting1(%struct.cxd2880_tnrdmd* %55, i32 %56, i32 %59, i32 %62, i32 0, i32 0)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %54
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %3, align 4
  br label %152

68:                                               ; preds = %54
  %69 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %70 = load %struct.cxd2880_dvbt2_tune_param*, %struct.cxd2880_dvbt2_tune_param** %5, align 8
  %71 = getelementptr inbounds %struct.cxd2880_dvbt2_tune_param, %struct.cxd2880_dvbt2_tune_param* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %74 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @x_tune_dvbt2_demod_setting(%struct.cxd2880_tnrdmd* %69, i32 %72, i32 %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %68
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %3, align 4
  br label %152

81:                                               ; preds = %68
  %82 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %83 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_MAIN, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %105

87:                                               ; preds = %81
  %88 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %89 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %88, i32 0, i32 2
  %90 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %89, align 8
  %91 = load %struct.cxd2880_dvbt2_tune_param*, %struct.cxd2880_dvbt2_tune_param** %5, align 8
  %92 = getelementptr inbounds %struct.cxd2880_dvbt2_tune_param, %struct.cxd2880_dvbt2_tune_param* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %95 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %94, i32 0, i32 2
  %96 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %95, align 8
  %97 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @x_tune_dvbt2_demod_setting(%struct.cxd2880_tnrdmd* %90, i32 %93, i32 %98)
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %87
  %103 = load i32, i32* %6, align 4
  store i32 %103, i32* %3, align 4
  br label %152

104:                                              ; preds = %87
  br label %105

105:                                              ; preds = %104, %81
  %106 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %107 = load %struct.cxd2880_dvbt2_tune_param*, %struct.cxd2880_dvbt2_tune_param** %5, align 8
  %108 = getelementptr inbounds %struct.cxd2880_dvbt2_tune_param, %struct.cxd2880_dvbt2_tune_param* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @dvbt2_set_profile(%struct.cxd2880_tnrdmd* %106, i64 %109)
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %105
  %114 = load i32, i32* %6, align 4
  store i32 %114, i32* %3, align 4
  br label %152

115:                                              ; preds = %105
  %116 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %117 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_MAIN, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %134

121:                                              ; preds = %115
  %122 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %123 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %122, i32 0, i32 2
  %124 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %123, align 8
  %125 = load %struct.cxd2880_dvbt2_tune_param*, %struct.cxd2880_dvbt2_tune_param** %5, align 8
  %126 = getelementptr inbounds %struct.cxd2880_dvbt2_tune_param, %struct.cxd2880_dvbt2_tune_param* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @dvbt2_set_profile(%struct.cxd2880_tnrdmd* %124, i64 %127)
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %6, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %121
  %132 = load i32, i32* %6, align 4
  store i32 %132, i32* %3, align 4
  br label %152

133:                                              ; preds = %121
  br label %134

134:                                              ; preds = %133, %115
  %135 = load %struct.cxd2880_dvbt2_tune_param*, %struct.cxd2880_dvbt2_tune_param** %5, align 8
  %136 = getelementptr inbounds %struct.cxd2880_dvbt2_tune_param, %struct.cxd2880_dvbt2_tune_param* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @CXD2880_DVBT2_TUNE_PARAM_PLPID_AUTO, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %134
  %141 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %142 = call i32 @cxd2880_tnrdmd_dvbt2_set_plp_cfg(%struct.cxd2880_tnrdmd* %141, i32 1, i32 0)
  store i32 %142, i32* %6, align 4
  br label %150

143:                                              ; preds = %134
  %144 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %145 = load %struct.cxd2880_dvbt2_tune_param*, %struct.cxd2880_dvbt2_tune_param** %5, align 8
  %146 = getelementptr inbounds %struct.cxd2880_dvbt2_tune_param, %struct.cxd2880_dvbt2_tune_param* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = trunc i64 %147 to i32
  %149 = call i32 @cxd2880_tnrdmd_dvbt2_set_plp_cfg(%struct.cxd2880_tnrdmd* %144, i32 0, i32 %148)
  store i32 %149, i32* %6, align 4
  br label %150

150:                                              ; preds = %143, %140
  %151 = load i32, i32* %6, align 4
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %150, %131, %113, %102, %79, %66, %51, %36, %21, %12
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local i32 @cxd2880_tnrdmd_common_tune_setting1(%struct.cxd2880_tnrdmd*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @x_tune_dvbt2_demod_setting(%struct.cxd2880_tnrdmd*, i32, i32) #1

declare dso_local i32 @dvbt2_set_profile(%struct.cxd2880_tnrdmd*, i64) #1

declare dso_local i32 @cxd2880_tnrdmd_dvbt2_set_plp_cfg(%struct.cxd2880_tnrdmd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
