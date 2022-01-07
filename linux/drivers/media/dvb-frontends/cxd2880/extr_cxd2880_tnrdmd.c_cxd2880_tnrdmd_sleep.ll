; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd.c_cxd2880_tnrdmd_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd.c_cxd2880_tnrdmd_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd = type { i64, i64, i32, i8*, %struct.cxd2880_tnrdmd*, i64 }

@EINVAL = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_DIVERMODE_SUB = common dso_local global i64 0, align 8
@CXD2880_TNRDMD_STATE_SLEEP = common dso_local global i64 0, align 8
@CXD2880_TNRDMD_STATE_ACTIVE = common dso_local global i64 0, align 8
@CXD2880_TNRDMD_DIVERMODE_MAIN = common dso_local global i64 0, align 8
@CXD2880_DTV_SYS_UNKNOWN = common dso_local global i8* null, align 8
@CXD2880_DTV_BW_UNKNOWN = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxd2880_tnrdmd_sleep(%struct.cxd2880_tnrdmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxd2880_tnrdmd*, align 8
  %4 = alloca i32, align 4
  store %struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd** %3, align 8
  %5 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %6 = icmp ne %struct.cxd2880_tnrdmd* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %188

10:                                               ; preds = %1
  %11 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %12 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_SUB, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %188

19:                                               ; preds = %10
  %20 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %21 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CXD2880_TNRDMD_STATE_SLEEP, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %188

26:                                               ; preds = %19
  %27 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %28 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CXD2880_TNRDMD_STATE_ACTIVE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %188

35:                                               ; preds = %26
  %36 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %37 = call i32 @cxd2880_tnrdmd_set_ts_output(%struct.cxd2880_tnrdmd* %36, i32 0)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %188

42:                                               ; preds = %35
  %43 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %44 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_MAIN, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %42
  %49 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %50 = call i32 @x_sleep1(%struct.cxd2880_tnrdmd* %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %188

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %42
  %57 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %58 = call i32 @x_sleep2(%struct.cxd2880_tnrdmd* %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %188

63:                                               ; preds = %56
  %64 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %65 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_MAIN, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %63
  %70 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %71 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %70, i32 0, i32 4
  %72 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %71, align 8
  %73 = call i32 @x_sleep2(%struct.cxd2880_tnrdmd* %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* %4, align 4
  store i32 %77, i32* %2, align 4
  br label %188

78:                                               ; preds = %69
  br label %79

79:                                               ; preds = %78, %63
  %80 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %81 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  switch i32 %82, label %99 [
    i32 129, label %83
    i32 128, label %91
  ]

83:                                               ; preds = %79
  %84 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %85 = call i32 @cxd2880_tnrdmd_dvbt_sleep_setting(%struct.cxd2880_tnrdmd* %84)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i32, i32* %4, align 4
  store i32 %89, i32* %2, align 4
  br label %188

90:                                               ; preds = %83
  br label %102

91:                                               ; preds = %79
  %92 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %93 = call i32 @cxd2880_tnrdmd_dvbt2_sleep_setting(%struct.cxd2880_tnrdmd* %92)
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* %4, align 4
  store i32 %97, i32* %2, align 4
  br label %188

98:                                               ; preds = %91
  br label %102

99:                                               ; preds = %79
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %2, align 4
  br label %188

102:                                              ; preds = %98, %90
  %103 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %104 = call i32 @x_sleep3(%struct.cxd2880_tnrdmd* %103)
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* %4, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = load i32, i32* %4, align 4
  store i32 %108, i32* %2, align 4
  br label %188

109:                                              ; preds = %102
  %110 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %111 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_MAIN, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %125

115:                                              ; preds = %109
  %116 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %117 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %116, i32 0, i32 4
  %118 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %117, align 8
  %119 = call i32 @x_sleep3(%struct.cxd2880_tnrdmd* %118)
  store i32 %119, i32* %4, align 4
  %120 = load i32, i32* %4, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %115
  %123 = load i32, i32* %4, align 4
  store i32 %123, i32* %2, align 4
  br label %188

124:                                              ; preds = %115
  br label %125

125:                                              ; preds = %124, %109
  %126 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %127 = call i32 @x_sleep4(%struct.cxd2880_tnrdmd* %126)
  store i32 %127, i32* %4, align 4
  %128 = load i32, i32* %4, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = load i32, i32* %4, align 4
  store i32 %131, i32* %2, align 4
  br label %188

132:                                              ; preds = %125
  %133 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %134 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_MAIN, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %148

138:                                              ; preds = %132
  %139 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %140 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %139, i32 0, i32 4
  %141 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %140, align 8
  %142 = call i32 @x_sleep4(%struct.cxd2880_tnrdmd* %141)
  store i32 %142, i32* %4, align 4
  %143 = load i32, i32* %4, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %138
  %146 = load i32, i32* %4, align 4
  store i32 %146, i32* %2, align 4
  br label %188

147:                                              ; preds = %138
  br label %148

148:                                              ; preds = %147, %132
  %149 = load i64, i64* @CXD2880_TNRDMD_STATE_SLEEP, align 8
  %150 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %151 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %150, i32 0, i32 1
  store i64 %149, i64* %151, align 8
  %152 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %153 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %152, i32 0, i32 5
  store i64 0, i64* %153, align 8
  %154 = load i8*, i8** @CXD2880_DTV_SYS_UNKNOWN, align 8
  %155 = ptrtoint i8* %154 to i32
  %156 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %157 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %156, i32 0, i32 2
  store i32 %155, i32* %157, align 8
  %158 = load i8*, i8** @CXD2880_DTV_BW_UNKNOWN, align 8
  %159 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %160 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %159, i32 0, i32 3
  store i8* %158, i8** %160, align 8
  %161 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %162 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_MAIN, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %187

166:                                              ; preds = %148
  %167 = load i64, i64* @CXD2880_TNRDMD_STATE_SLEEP, align 8
  %168 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %169 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %168, i32 0, i32 4
  %170 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %169, align 8
  %171 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %170, i32 0, i32 1
  store i64 %167, i64* %171, align 8
  %172 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %173 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %172, i32 0, i32 4
  %174 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %173, align 8
  %175 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %174, i32 0, i32 5
  store i64 0, i64* %175, align 8
  %176 = load i8*, i8** @CXD2880_DTV_SYS_UNKNOWN, align 8
  %177 = ptrtoint i8* %176 to i32
  %178 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %179 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %178, i32 0, i32 4
  %180 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %179, align 8
  %181 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %180, i32 0, i32 2
  store i32 %177, i32* %181, align 8
  %182 = load i8*, i8** @CXD2880_DTV_BW_UNKNOWN, align 8
  %183 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %184 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %183, i32 0, i32 4
  %185 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %184, align 8
  %186 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %185, i32 0, i32 3
  store i8* %182, i8** %186, align 8
  br label %187

187:                                              ; preds = %166, %148
  store i32 0, i32* %2, align 4
  br label %188

188:                                              ; preds = %187, %145, %130, %122, %107, %99, %96, %88, %76, %61, %53, %40, %32, %25, %16, %7
  %189 = load i32, i32* %2, align 4
  ret i32 %189
}

declare dso_local i32 @cxd2880_tnrdmd_set_ts_output(%struct.cxd2880_tnrdmd*, i32) #1

declare dso_local i32 @x_sleep1(%struct.cxd2880_tnrdmd*) #1

declare dso_local i32 @x_sleep2(%struct.cxd2880_tnrdmd*) #1

declare dso_local i32 @cxd2880_tnrdmd_dvbt_sleep_setting(%struct.cxd2880_tnrdmd*) #1

declare dso_local i32 @cxd2880_tnrdmd_dvbt2_sleep_setting(%struct.cxd2880_tnrdmd*) #1

declare dso_local i32 @x_sleep3(%struct.cxd2880_tnrdmd*) #1

declare dso_local i32 @x_sleep4(%struct.cxd2880_tnrdmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
