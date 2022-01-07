; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_opregion.c_intel_vgpu_emulate_opregion_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_opregion.c_intel_vgpu_emulate_opregion_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.intel_vgpu = type { i32 }
%struct.TYPE_3__ = type { i32*, i64 }

@intel_gvt_host = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@INTEL_GVT_OPREGION_SCIC = common dso_local global i32 0, align 4
@INTEL_GVT_OPREGION_PARM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"guest opregion read error %d, gpa 0x%llx, len %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"not supported hypervisor\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SWSCI_SCI_SELECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"requesting SMI service\0A\00", align 1
@INTEL_GVT_PCI_SWSCI = common dso_local global i64 0, align 8
@SWSCI_SCI_TRIGGER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"requesting runtime service: func \22%s\22, subfunc \22%s\22\0A\00", align 1
@OPREGION_SCIC_EXIT_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"guest opregion write error %d, gpa 0x%llx, len %lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_vgpu_emulate_opregion_request(%struct.intel_vgpu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_vgpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_gvt_host, i32 0, i32 0), align 4
  switch i32 %13, label %76 [
    i32 128, label %14
    i32 129, label %33
  ]

14:                                               ; preds = %2
  %15 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %16 = call %struct.TYPE_3__* @vgpu_opregion(%struct.intel_vgpu* %15)
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i32*
  %20 = load i32, i32* @INTEL_GVT_OPREGION_SCIC, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  %24 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %25 = call %struct.TYPE_3__* @vgpu_opregion(%struct.intel_vgpu* %24)
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i32*
  %29 = load i32, i32* @INTEL_GVT_OPREGION_PARM, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  br label %80

33:                                               ; preds = %2
  %34 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %35 = call %struct.TYPE_3__* @vgpu_opregion(%struct.intel_vgpu* %34)
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PAGE_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = load i32, i32* @INTEL_GVT_OPREGION_SCIC, align 4
  %43 = add nsw i32 %41, %42
  store i32 %43, i32* %10, align 4
  %44 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %45 = call %struct.TYPE_3__* @vgpu_opregion(%struct.intel_vgpu* %44)
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @PAGE_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = load i32, i32* @INTEL_GVT_OPREGION_PARM, align 4
  %53 = add nsw i32 %51, %52
  store i32 %53, i32* %11, align 4
  %54 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @intel_gvt_hypervisor_read_gpa(%struct.intel_vgpu* %54, i32 %55, i32* %6, i32 4)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %33
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 (i8*, ...) @gvt_vgpu_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61, i64 4)
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %3, align 4
  br label %170

64:                                               ; preds = %33
  %65 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @intel_gvt_hypervisor_read_gpa(%struct.intel_vgpu* %65, i32 %66, i32* %7, i32 4)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i32 (i8*, ...) @gvt_vgpu_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %72, i64 4)
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %3, align 4
  br label %170

75:                                               ; preds = %64
  br label %80

76:                                               ; preds = %2
  %77 = call i32 (i8*, ...) @gvt_vgpu_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %170

80:                                               ; preds = %75, %14
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @SWSCI_SCI_SELECT, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %80
  %86 = call i32 (i8*, ...) @gvt_vgpu_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %170

87:                                               ; preds = %80
  %88 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %89 = call i32* @vgpu_cfg_space(%struct.intel_vgpu* %88)
  %90 = load i64, i64* @INTEL_GVT_PCI_SWSCI, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @SWSCI_SCI_TRIGGER, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %87
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @SWSCI_SCI_TRIGGER, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %96, %87
  store i32 0, i32* %3, align 4
  br label %170

102:                                              ; preds = %96
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @GVT_OPREGION_FUNC(i32 %103)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @GVT_OPREGION_SUBFUNC(i32 %105)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @querying_capabilities(i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %120, label %110

110:                                              ; preds = %102
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @opregion_func_name(i32 %111)
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @opregion_subfunc_name(i32 %113)
  %115 = call i32 (i8*, ...) @gvt_vgpu_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %112, i32 %114)
  %116 = load i32, i32* @OPREGION_SCIC_EXIT_MASK, align 4
  %117 = xor i32 %116, -1
  %118 = load i32, i32* %6, align 4
  %119 = and i32 %118, %117
  store i32 %119, i32* %6, align 4
  br label %121

120:                                              ; preds = %102
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %121

121:                                              ; preds = %120, %110
  %122 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_gvt_host, i32 0, i32 0), align 4
  switch i32 %122, label %165 [
    i32 128, label %123
    i32 129, label %142
  ]

123:                                              ; preds = %121
  %124 = load i32, i32* %6, align 4
  %125 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %126 = call %struct.TYPE_3__* @vgpu_opregion(%struct.intel_vgpu* %125)
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = inttoptr i64 %128 to i32*
  %130 = load i32, i32* @INTEL_GVT_OPREGION_SCIC, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  store i32 %124, i32* %132, align 4
  %133 = load i32, i32* %7, align 4
  %134 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %135 = call %struct.TYPE_3__* @vgpu_opregion(%struct.intel_vgpu* %134)
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = inttoptr i64 %137 to i32*
  %139 = load i32, i32* @INTEL_GVT_OPREGION_PARM, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  store i32 %133, i32* %141, align 4
  br label %169

142:                                              ; preds = %121
  %143 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %144 = load i32, i32* %10, align 4
  %145 = call i32 @intel_gvt_hypervisor_write_gpa(%struct.intel_vgpu* %143, i32 %144, i32* %6, i32 4)
  store i32 %145, i32* %12, align 4
  %146 = load i32, i32* %12, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %142
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* %10, align 4
  %151 = call i32 (i8*, ...) @gvt_vgpu_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 %149, i32 %150, i64 4)
  %152 = load i32, i32* %12, align 4
  store i32 %152, i32* %3, align 4
  br label %170

153:                                              ; preds = %142
  %154 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %155 = load i32, i32* %11, align 4
  %156 = call i32 @intel_gvt_hypervisor_write_gpa(%struct.intel_vgpu* %154, i32 %155, i32* %7, i32 4)
  store i32 %156, i32* %12, align 4
  %157 = load i32, i32* %12, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %153
  %160 = load i32, i32* %12, align 4
  %161 = load i32, i32* %10, align 4
  %162 = call i32 (i8*, ...) @gvt_vgpu_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 %160, i32 %161, i64 4)
  %163 = load i32, i32* %12, align 4
  store i32 %163, i32* %3, align 4
  br label %170

164:                                              ; preds = %153
  br label %169

165:                                              ; preds = %121
  %166 = call i32 (i8*, ...) @gvt_vgpu_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %3, align 4
  br label %170

169:                                              ; preds = %164, %123
  store i32 0, i32* %3, align 4
  br label %170

170:                                              ; preds = %169, %165, %159, %148, %101, %85, %76, %70, %59
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local %struct.TYPE_3__* @vgpu_opregion(%struct.intel_vgpu*) #1

declare dso_local i32 @intel_gvt_hypervisor_read_gpa(%struct.intel_vgpu*, i32, i32*, i32) #1

declare dso_local i32 @gvt_vgpu_err(i8*, ...) #1

declare dso_local i32* @vgpu_cfg_space(%struct.intel_vgpu*) #1

declare dso_local i32 @GVT_OPREGION_FUNC(i32) #1

declare dso_local i32 @GVT_OPREGION_SUBFUNC(i32) #1

declare dso_local i32 @querying_capabilities(i32) #1

declare dso_local i32 @opregion_func_name(i32) #1

declare dso_local i32 @opregion_subfunc_name(i32) #1

declare dso_local i32 @intel_gvt_hypervisor_write_gpa(%struct.intel_vgpu*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
