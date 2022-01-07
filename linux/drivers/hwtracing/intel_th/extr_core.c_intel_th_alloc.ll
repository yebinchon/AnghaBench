; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_core.c_intel_th_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_core.c_intel_th_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_th = type { i32, i32, i32, i32, %struct.resource*, %struct.intel_th_drvdata*, %struct.device* }
%struct.device = type { i32 }
%struct.intel_th_drvdata = type { i32 }
%struct.resource = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@intel_th_ida = common dso_local global i32 0, align 4
@TH_POSSIBLE_OUTPUTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"intel_th/output\00", align 1
@intel_th_output_fops = common dso_local global i32 0, align 4
@IORESOURCE_TYPE_BITS = common dso_local global i32 0, align 4
@intel_th_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Unknown resource type %lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.intel_th* @intel_th_alloc(%struct.device* %0, %struct.intel_th_drvdata* %1, %struct.resource* %2, i32 %3) #0 {
  %5 = alloca %struct.intel_th*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.intel_th_drvdata*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.intel_th*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.intel_th_drvdata* %1, %struct.intel_th_drvdata** %7, align 8
  store %struct.resource* %2, %struct.resource** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.intel_th* @kzalloc(i32 40, i32 %14)
  store %struct.intel_th* %15, %struct.intel_th** %13, align 8
  %16 = load %struct.intel_th*, %struct.intel_th** %13, align 8
  %17 = icmp ne %struct.intel_th* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.intel_th* @ERR_PTR(i32 %20)
  store %struct.intel_th* %21, %struct.intel_th** %5, align 8
  br label %169

22:                                               ; preds = %4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i32 @ida_simple_get(i32* @intel_th_ida, i32 0, i32 0, i32 %23)
  %25 = load %struct.intel_th*, %struct.intel_th** %13, align 8
  %26 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.intel_th*, %struct.intel_th** %13, align 8
  %28 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = load %struct.intel_th*, %struct.intel_th** %13, align 8
  %33 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %10, align 4
  br label %164

35:                                               ; preds = %22
  %36 = load i32, i32* @TH_POSSIBLE_OUTPUTS, align 4
  %37 = call i32 @__register_chrdev(i32 0, i32 0, i32 %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* @intel_th_output_fops)
  %38 = load %struct.intel_th*, %struct.intel_th** %13, align 8
  %39 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.intel_th*, %struct.intel_th** %13, align 8
  %41 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = load %struct.intel_th*, %struct.intel_th** %13, align 8
  %46 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %10, align 4
  br label %159

48:                                               ; preds = %35
  %49 = load %struct.intel_th*, %struct.intel_th** %13, align 8
  %50 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %49, i32 0, i32 2
  store i32 -1, i32* %50, align 8
  %51 = load %struct.device*, %struct.device** %6, align 8
  %52 = load %struct.intel_th*, %struct.intel_th** %13, align 8
  %53 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %52, i32 0, i32 6
  store %struct.device* %51, %struct.device** %53, align 8
  %54 = load %struct.intel_th_drvdata*, %struct.intel_th_drvdata** %7, align 8
  %55 = load %struct.intel_th*, %struct.intel_th** %13, align 8
  %56 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %55, i32 0, i32 5
  store %struct.intel_th_drvdata* %54, %struct.intel_th_drvdata** %56, align 8
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %126, %48
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %61, label %129

61:                                               ; preds = %57
  %62 = load %struct.resource*, %struct.resource** %8, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.resource, %struct.resource* %62, i64 %64
  %66 = getelementptr inbounds %struct.resource, %struct.resource* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @IORESOURCE_TYPE_BITS, align 4
  %69 = and i32 %67, %68
  switch i32 %69, label %116 [
    i32 128, label %70
    i32 129, label %84
  ]

70:                                               ; preds = %61
  %71 = load %struct.intel_th*, %struct.intel_th** %13, align 8
  %72 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %71, i32 0, i32 4
  %73 = load %struct.resource*, %struct.resource** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %12, align 4
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds %struct.resource, %struct.resource* %73, i64 %76
  %78 = load %struct.resource*, %struct.resource** %8, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.resource, %struct.resource* %78, i64 %80
  %82 = bitcast %struct.resource* %77 to i8*
  %83 = bitcast %struct.resource* %81 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %82, i8* align 4 %83, i64 8, i1 false)
  br label %125

84:                                               ; preds = %61
  %85 = load %struct.device*, %struct.device** %6, align 8
  %86 = load %struct.resource*, %struct.resource** %8, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.resource, %struct.resource* %86, i64 %88
  %90 = getelementptr inbounds %struct.resource, %struct.resource* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @intel_th_irq, align 4
  %93 = load i32, i32* @IRQF_SHARED, align 4
  %94 = load %struct.device*, %struct.device** %6, align 8
  %95 = call i32 @dev_name(%struct.device* %94)
  %96 = load %struct.intel_th*, %struct.intel_th** %13, align 8
  %97 = call i32 @devm_request_irq(%struct.device* %85, i32 %91, i32 %92, i32 %93, i32 %95, %struct.intel_th* %96)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %84
  br label %153

101:                                              ; preds = %84
  %102 = load %struct.intel_th*, %struct.intel_th** %13, align 8
  %103 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = icmp eq i32 %104, -1
  br i1 %105, label %106, label %115

106:                                              ; preds = %101
  %107 = load %struct.resource*, %struct.resource** %8, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.resource, %struct.resource* %107, i64 %109
  %111 = getelementptr inbounds %struct.resource, %struct.resource* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.intel_th*, %struct.intel_th** %13, align 8
  %114 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  br label %115

115:                                              ; preds = %106, %101
  br label %125

116:                                              ; preds = %61
  %117 = load %struct.device*, %struct.device** %6, align 8
  %118 = load %struct.resource*, %struct.resource** %8, align 8
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.resource, %struct.resource* %118, i64 %120
  %122 = getelementptr inbounds %struct.resource, %struct.resource* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @dev_warn(%struct.device* %117, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %123)
  br label %125

125:                                              ; preds = %116, %115, %70
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %11, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %11, align 4
  br label %57

129:                                              ; preds = %57
  %130 = load i32, i32* %12, align 4
  %131 = load %struct.intel_th*, %struct.intel_th** %13, align 8
  %132 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %131, i32 0, i32 3
  store i32 %130, i32* %132, align 4
  %133 = load %struct.device*, %struct.device** %6, align 8
  %134 = load %struct.intel_th*, %struct.intel_th** %13, align 8
  %135 = call i32 @dev_set_drvdata(%struct.device* %133, %struct.intel_th* %134)
  %136 = load %struct.device*, %struct.device** %6, align 8
  %137 = call i32 @pm_runtime_no_callbacks(%struct.device* %136)
  %138 = load %struct.device*, %struct.device** %6, align 8
  %139 = call i32 @pm_runtime_put(%struct.device* %138)
  %140 = load %struct.device*, %struct.device** %6, align 8
  %141 = call i32 @pm_runtime_allow(%struct.device* %140)
  %142 = load %struct.intel_th*, %struct.intel_th** %13, align 8
  %143 = call i32 @intel_th_populate(%struct.intel_th* %142)
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* %10, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %129
  %147 = load %struct.intel_th*, %struct.intel_th** %13, align 8
  %148 = call i32 @intel_th_free(%struct.intel_th* %147)
  %149 = load i32, i32* %10, align 4
  %150 = call %struct.intel_th* @ERR_PTR(i32 %149)
  store %struct.intel_th* %150, %struct.intel_th** %5, align 8
  br label %169

151:                                              ; preds = %129
  %152 = load %struct.intel_th*, %struct.intel_th** %13, align 8
  store %struct.intel_th* %152, %struct.intel_th** %5, align 8
  br label %169

153:                                              ; preds = %100
  %154 = load %struct.intel_th*, %struct.intel_th** %13, align 8
  %155 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @TH_POSSIBLE_OUTPUTS, align 4
  %158 = call i32 @__unregister_chrdev(i32 %156, i32 0, i32 %157, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %159

159:                                              ; preds = %153, %44
  %160 = load %struct.intel_th*, %struct.intel_th** %13, align 8
  %161 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @ida_simple_remove(i32* @intel_th_ida, i32 %162)
  br label %164

164:                                              ; preds = %159, %31
  %165 = load %struct.intel_th*, %struct.intel_th** %13, align 8
  %166 = call i32 @kfree(%struct.intel_th* %165)
  %167 = load i32, i32* %10, align 4
  %168 = call %struct.intel_th* @ERR_PTR(i32 %167)
  store %struct.intel_th* %168, %struct.intel_th** %5, align 8
  br label %169

169:                                              ; preds = %164, %151, %146, %18
  %170 = load %struct.intel_th*, %struct.intel_th** %5, align 8
  ret %struct.intel_th* %170
}

declare dso_local %struct.intel_th* @kzalloc(i32, i32) #1

declare dso_local %struct.intel_th* @ERR_PTR(i32) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @__register_chrdev(i32, i32, i32, i8*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.intel_th*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.intel_th*) #1

declare dso_local i32 @pm_runtime_no_callbacks(%struct.device*) #1

declare dso_local i32 @pm_runtime_put(%struct.device*) #1

declare dso_local i32 @pm_runtime_allow(%struct.device*) #1

declare dso_local i32 @intel_th_populate(%struct.intel_th*) #1

declare dso_local i32 @intel_th_free(%struct.intel_th*) #1

declare dso_local i32 @__unregister_chrdev(i32, i32, i32, i8*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @kfree(%struct.intel_th*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
