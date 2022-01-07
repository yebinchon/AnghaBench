; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_patch_dependency_tables_with_leakage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_patch_dependency_tables_with_leakage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @smu7_patch_dependency_tables_with_leakage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_patch_dependency_tables_with_leakage(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  %5 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %6 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %7 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 11
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @smu7_patch_vddc(%struct.pp_hwmgr* %5, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %147

16:                                               ; preds = %1
  %17 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %18 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %19 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 10
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @smu7_patch_vddc(%struct.pp_hwmgr* %17, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %147

28:                                               ; preds = %16
  %29 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %30 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %31 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 9
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @smu7_patch_vddc(%struct.pp_hwmgr* %29, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %147

40:                                               ; preds = %28
  %41 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %42 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %43 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 8
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @smu7_patch_vddci(%struct.pp_hwmgr* %41, i32 %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %147

52:                                               ; preds = %40
  %53 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %54 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %55 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @smu7_patch_vce_vddc(%struct.pp_hwmgr* %53, i32 %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %147

64:                                               ; preds = %52
  %65 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %66 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %67 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @smu7_patch_uvd_vddc(%struct.pp_hwmgr* %65, i32 %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %147

76:                                               ; preds = %64
  %77 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %78 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %79 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @smu7_patch_samu_vddc(%struct.pp_hwmgr* %77, i32 %81)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %76
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %2, align 4
  br label %147

88:                                               ; preds = %76
  %89 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %90 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %91 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @smu7_patch_acp_vddc(%struct.pp_hwmgr* %89, i32 %93)
  store i32 %94, i32* %4, align 4
  %95 = load i32, i32* %4, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %88
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  br label %147

100:                                              ; preds = %88
  %101 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %102 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %103 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @smu7_patch_vddc_shed_limit(%struct.pp_hwmgr* %101, i32 %105)
  store i32 %106, i32* %4, align 4
  %107 = load i32, i32* %4, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %100
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %2, align 4
  br label %147

112:                                              ; preds = %100
  %113 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %114 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %115 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 2
  %117 = call i32 @smu7_patch_limits_vddc(%struct.pp_hwmgr* %113, i32* %116)
  store i32 %117, i32* %4, align 4
  %118 = load i32, i32* %4, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %112
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %2, align 4
  br label %147

123:                                              ; preds = %112
  %124 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %125 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %126 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  %128 = call i32 @smu7_patch_limits_vddc(%struct.pp_hwmgr* %124, i32* %127)
  store i32 %128, i32* %4, align 4
  %129 = load i32, i32* %4, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %123
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %2, align 4
  br label %147

134:                                              ; preds = %123
  %135 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %136 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %137 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @smu7_patch_cac_vddc(%struct.pp_hwmgr* %135, i32 %139)
  store i32 %140, i32* %4, align 4
  %141 = load i32, i32* %4, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %134
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %2, align 4
  br label %147

146:                                              ; preds = %134
  store i32 0, i32* %2, align 4
  br label %147

147:                                              ; preds = %146, %143, %131, %120, %109, %97, %85, %73, %61, %49, %37, %25, %13
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i32 @smu7_patch_vddc(%struct.pp_hwmgr*, i32) #1

declare dso_local i32 @smu7_patch_vddci(%struct.pp_hwmgr*, i32) #1

declare dso_local i32 @smu7_patch_vce_vddc(%struct.pp_hwmgr*, i32) #1

declare dso_local i32 @smu7_patch_uvd_vddc(%struct.pp_hwmgr*, i32) #1

declare dso_local i32 @smu7_patch_samu_vddc(%struct.pp_hwmgr*, i32) #1

declare dso_local i32 @smu7_patch_acp_vddc(%struct.pp_hwmgr*, i32) #1

declare dso_local i32 @smu7_patch_vddc_shed_limit(%struct.pp_hwmgr*, i32) #1

declare dso_local i32 @smu7_patch_limits_vddc(%struct.pp_hwmgr*, i32*) #1

declare dso_local i32 @smu7_patch_cac_vddc(%struct.pp_hwmgr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
