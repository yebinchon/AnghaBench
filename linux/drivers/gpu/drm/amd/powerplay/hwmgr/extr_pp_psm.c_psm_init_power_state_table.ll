; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_pp_psm.c_psm_init_power_state_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_pp_psm.c_psm_init_power_state_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, i32, %struct.pp_power_state*, %struct.pp_power_state*, %struct.pp_power_state*, %struct.pp_power_state*, %struct.TYPE_3__*, %struct.pp_power_state* }
%struct.TYPE_3__ = type { i32 (%struct.pp_hwmgr*)*, {}*, i32 (%struct.pp_hwmgr*, i32, %struct.pp_power_state*)* }
%struct.pp_power_state = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [71 x i8] c"Please check whether power state management is supported on this asic\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PP_StateClassificationFlag_Boot = common dso_local global i32 0, align 4
@PP_StateClassificationFlag_Uvd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psm_init_power_state_table(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pp_power_state*, align 8
  %8 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  %9 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %10 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %9, i32 0, i32 6
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32 (%struct.pp_hwmgr*)*, i32 (%struct.pp_hwmgr*)** %12, align 8
  %14 = icmp eq i32 (%struct.pp_hwmgr*)* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %183

16:                                               ; preds = %1
  %17 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %18 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %17, i32 0, i32 6
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = bitcast {}** %20 to i32 (%struct.pp_hwmgr*)**
  %22 = load i32 (%struct.pp_hwmgr*)*, i32 (%struct.pp_hwmgr*)** %21, align 8
  %23 = icmp eq i32 (%struct.pp_hwmgr*)* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %183

25:                                               ; preds = %16
  %26 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %27 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %26, i32 0, i32 6
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32 (%struct.pp_hwmgr*)*, i32 (%struct.pp_hwmgr*)** %29, align 8
  %31 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %32 = call i32 %30(%struct.pp_hwmgr* %31)
  store i32 %32, i32* %6, align 4
  %33 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %34 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %36 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %35, i32 0, i32 6
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = bitcast {}** %38 to i32 (%struct.pp_hwmgr*)**
  %40 = load i32 (%struct.pp_hwmgr*)*, i32 (%struct.pp_hwmgr*)** %39, align 8
  %41 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %42 = call i32 %40(%struct.pp_hwmgr* %41)
  %43 = sext i32 %42 to i64
  %44 = add i64 %43, 8
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %8, align 4
  %46 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %47 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %25
  %51 = load i32, i32* %8, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50, %25
  %54 = call i32 @pr_warn(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %183

55:                                               ; preds = %50
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call %struct.pp_power_state* @kcalloc(i32 %56, i32 %57, i32 %58)
  %60 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %61 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %60, i32 0, i32 7
  store %struct.pp_power_state* %59, %struct.pp_power_state** %61, align 8
  %62 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %63 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %62, i32 0, i32 7
  %64 = load %struct.pp_power_state*, %struct.pp_power_state** %63, align 8
  %65 = icmp eq %struct.pp_power_state* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %55
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %183

69:                                               ; preds = %55
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call i8* @kzalloc(i32 %70, i32 %71)
  %73 = bitcast i8* %72 to %struct.pp_power_state*
  %74 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %75 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %74, i32 0, i32 3
  store %struct.pp_power_state* %73, %struct.pp_power_state** %75, align 8
  %76 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %77 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %76, i32 0, i32 3
  %78 = load %struct.pp_power_state*, %struct.pp_power_state** %77, align 8
  %79 = icmp eq %struct.pp_power_state* %78, null
  br i1 %79, label %80, label %89

80:                                               ; preds = %69
  %81 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %82 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %81, i32 0, i32 7
  %83 = load %struct.pp_power_state*, %struct.pp_power_state** %82, align 8
  %84 = call i32 @kfree(%struct.pp_power_state* %83)
  %85 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %86 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %85, i32 0, i32 7
  store %struct.pp_power_state* null, %struct.pp_power_state** %86, align 8
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %183

89:                                               ; preds = %69
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @GFP_KERNEL, align 4
  %92 = call i8* @kzalloc(i32 %90, i32 %91)
  %93 = bitcast i8* %92 to %struct.pp_power_state*
  %94 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %95 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %94, i32 0, i32 4
  store %struct.pp_power_state* %93, %struct.pp_power_state** %95, align 8
  %96 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %97 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %96, i32 0, i32 4
  %98 = load %struct.pp_power_state*, %struct.pp_power_state** %97, align 8
  %99 = icmp eq %struct.pp_power_state* %98, null
  br i1 %99, label %100, label %115

100:                                              ; preds = %89
  %101 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %102 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %101, i32 0, i32 3
  %103 = load %struct.pp_power_state*, %struct.pp_power_state** %102, align 8
  %104 = call i32 @kfree(%struct.pp_power_state* %103)
  %105 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %106 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %105, i32 0, i32 7
  %107 = load %struct.pp_power_state*, %struct.pp_power_state** %106, align 8
  %108 = call i32 @kfree(%struct.pp_power_state* %107)
  %109 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %110 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %109, i32 0, i32 3
  store %struct.pp_power_state* null, %struct.pp_power_state** %110, align 8
  %111 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %112 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %111, i32 0, i32 7
  store %struct.pp_power_state* null, %struct.pp_power_state** %112, align 8
  %113 = load i32, i32* @ENOMEM, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %2, align 4
  br label %183

115:                                              ; preds = %89
  %116 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %117 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %116, i32 0, i32 7
  %118 = load %struct.pp_power_state*, %struct.pp_power_state** %117, align 8
  store %struct.pp_power_state* %118, %struct.pp_power_state** %7, align 8
  store i32 0, i32* %5, align 4
  br label %119

119:                                              ; preds = %179, %115
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* %6, align 4
  %122 = icmp ult i32 %120, %121
  br i1 %122, label %123, label %182

123:                                              ; preds = %119
  %124 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %125 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %124, i32 0, i32 6
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 2
  %128 = load i32 (%struct.pp_hwmgr*, i32, %struct.pp_power_state*)*, i32 (%struct.pp_hwmgr*, i32, %struct.pp_power_state*)** %127, align 8
  %129 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %130 = load i32, i32* %5, align 4
  %131 = load %struct.pp_power_state*, %struct.pp_power_state** %7, align 8
  %132 = call i32 %128(%struct.pp_hwmgr* %129, i32 %130, %struct.pp_power_state* %131)
  store i32 %132, i32* %4, align 4
  %133 = load %struct.pp_power_state*, %struct.pp_power_state** %7, align 8
  %134 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @PP_StateClassificationFlag_Boot, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %156

140:                                              ; preds = %123
  %141 = load %struct.pp_power_state*, %struct.pp_power_state** %7, align 8
  %142 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %143 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %142, i32 0, i32 5
  store %struct.pp_power_state* %141, %struct.pp_power_state** %143, align 8
  %144 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %145 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %144, i32 0, i32 4
  %146 = load %struct.pp_power_state*, %struct.pp_power_state** %145, align 8
  %147 = load %struct.pp_power_state*, %struct.pp_power_state** %7, align 8
  %148 = load i32, i32* %8, align 4
  %149 = call i32 @memcpy(%struct.pp_power_state* %146, %struct.pp_power_state* %147, i32 %148)
  %150 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %151 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %150, i32 0, i32 3
  %152 = load %struct.pp_power_state*, %struct.pp_power_state** %151, align 8
  %153 = load %struct.pp_power_state*, %struct.pp_power_state** %7, align 8
  %154 = load i32, i32* %8, align 4
  %155 = call i32 @memcpy(%struct.pp_power_state* %152, %struct.pp_power_state* %153, i32 %154)
  br label %156

156:                                              ; preds = %140, %123
  %157 = load i32, i32* %5, align 4
  %158 = add i32 %157, 1
  %159 = load %struct.pp_power_state*, %struct.pp_power_state** %7, align 8
  %160 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 4
  %161 = load %struct.pp_power_state*, %struct.pp_power_state** %7, align 8
  %162 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @PP_StateClassificationFlag_Uvd, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %156
  %169 = load %struct.pp_power_state*, %struct.pp_power_state** %7, align 8
  %170 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %171 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %170, i32 0, i32 2
  store %struct.pp_power_state* %169, %struct.pp_power_state** %171, align 8
  br label %172

172:                                              ; preds = %168, %156
  %173 = load %struct.pp_power_state*, %struct.pp_power_state** %7, align 8
  %174 = ptrtoint %struct.pp_power_state* %173 to i64
  %175 = load i32, i32* %8, align 4
  %176 = sext i32 %175 to i64
  %177 = add i64 %174, %176
  %178 = inttoptr i64 %177 to %struct.pp_power_state*
  store %struct.pp_power_state* %178, %struct.pp_power_state** %7, align 8
  br label %179

179:                                              ; preds = %172
  %180 = load i32, i32* %5, align 4
  %181 = add i32 %180, 1
  store i32 %181, i32* %5, align 4
  br label %119

182:                                              ; preds = %119
  store i32 0, i32* %2, align 4
  br label %183

183:                                              ; preds = %182, %100, %80, %66, %53, %24, %15
  %184 = load i32, i32* %2, align 4
  ret i32 %184
}

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local %struct.pp_power_state* @kcalloc(i32, i32, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.pp_power_state*) #1

declare dso_local i32 @memcpy(%struct.pp_power_state*, %struct.pp_power_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
