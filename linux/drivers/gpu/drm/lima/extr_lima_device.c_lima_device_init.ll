; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_device.c_lima_device_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_device.c_lima_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_device = type { i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i64 }
%struct.resource = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@lima_gpu_mali450 = common dso_local global i64 0, align 8
@LIMA_VA_RESERVE_START = common dso_local global i32 0, align 4
@LIMA_PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@LIMA_VA_RESERVE_END = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"fail to ioremap iomem\0A\00", align 1
@lima_ip_num = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"bus rate = %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"mod rate = %lu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lima_device_init(%struct.lima_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lima_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.resource*, align 8
  store %struct.lima_device* %0, %struct.lima_device** %3, align 8
  %7 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %8 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @DMA_BIT_MASK(i32 32)
  %11 = call i32 @dma_set_coherent_mask(i32 %9, i32 %10)
  %12 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %13 = call i32 @lima_clk_init(%struct.lima_device* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %185

18:                                               ; preds = %1
  %19 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %20 = call i32 @lima_regulator_init(%struct.lima_device* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %181

24:                                               ; preds = %18
  %25 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %26 = call i32 @lima_vm_create(%struct.lima_device* %25)
  %27 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %28 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %30 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %178

36:                                               ; preds = %24
  %37 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %38 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %37, i32 0, i32 10
  store i64 0, i64* %38, align 8
  %39 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %40 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @lima_gpu_mali450, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %66

44:                                               ; preds = %36
  %45 = load i32, i32* @LIMA_VA_RESERVE_START, align 4
  %46 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %47 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %46, i32 0, i32 9
  store i32 %45, i32* %47, align 4
  %48 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %49 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @LIMA_PAGE_SIZE, align 4
  %52 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %53 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %52, i32 0, i32 2
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i64 @dma_alloc_wc(i32 %50, i32 %51, i32* %53, i32 %54)
  %56 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %57 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %56, i32 0, i32 3
  store i64 %55, i64* %57, align 8
  %58 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %59 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %44
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %173

65:                                               ; preds = %44
  br label %70

66:                                               ; preds = %36
  %67 = load i32, i32* @LIMA_VA_RESERVE_END, align 4
  %68 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %69 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %68, i32 0, i32 9
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %66, %65
  %71 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %72 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %71, i32 0, i32 8
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @IORESOURCE_MEM, align 4
  %75 = call %struct.resource* @platform_get_resource(i32 %73, i32 %74, i32 0)
  store %struct.resource* %75, %struct.resource** %6, align 8
  %76 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %77 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.resource*, %struct.resource** %6, align 8
  %80 = call i32 @devm_ioremap_resource(i32 %78, %struct.resource* %79)
  %81 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %82 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %81, i32 0, i32 7
  store i32 %80, i32* %82, align 4
  %83 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %84 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @IS_ERR(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %70
  %89 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %90 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @dev_err(i32 %91, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %93 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %94 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @PTR_ERR(i32 %95)
  store i32 %96, i32* %4, align 4
  br label %155

97:                                               ; preds = %70
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %110, %97
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @lima_ip_num, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %113

102:                                              ; preds = %98
  %103 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @lima_init_ip(%struct.lima_device* %103, i32 %104)
  store i32 %105, i32* %4, align 4
  %106 = load i32, i32* %4, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  br label %145

109:                                              ; preds = %102
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %5, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %5, align 4
  br label %98

113:                                              ; preds = %98
  %114 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %115 = call i32 @lima_init_gp_pipe(%struct.lima_device* %114)
  store i32 %115, i32* %4, align 4
  %116 = load i32, i32* %4, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  br label %145

119:                                              ; preds = %113
  %120 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %121 = call i32 @lima_init_pp_pipe(%struct.lima_device* %120)
  store i32 %121, i32* %4, align 4
  %122 = load i32, i32* %4, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  br label %142

125:                                              ; preds = %119
  %126 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %127 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %130 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %129, i32 0, i32 6
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @clk_get_rate(i32 %131)
  %133 = call i32 @dev_info(i32 %128, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %132)
  %134 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %135 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %138 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @clk_get_rate(i32 %139)
  %141 = call i32 @dev_info(i32 %136, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %140)
  store i32 0, i32* %2, align 4
  br label %185

142:                                              ; preds = %124
  %143 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %144 = call i32 @lima_fini_gp_pipe(%struct.lima_device* %143)
  br label %145

145:                                              ; preds = %142, %118, %108
  br label %146

146:                                              ; preds = %150, %145
  %147 = load i32, i32* %5, align 4
  %148 = add nsw i32 %147, -1
  store i32 %148, i32* %5, align 4
  %149 = icmp sge i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %146
  %151 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %152 = load i32, i32* %5, align 4
  %153 = call i32 @lima_fini_ip(%struct.lima_device* %151, i32 %152)
  br label %146

154:                                              ; preds = %146
  br label %155

155:                                              ; preds = %154, %88
  %156 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %157 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %172

160:                                              ; preds = %155
  %161 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %162 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @LIMA_PAGE_SIZE, align 4
  %165 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %166 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %169 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @dma_free_wc(i32 %163, i32 %164, i64 %167, i32 %170)
  br label %172

172:                                              ; preds = %160, %155
  br label %173

173:                                              ; preds = %172, %62
  %174 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %175 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @lima_vm_put(i32 %176)
  br label %178

178:                                              ; preds = %173, %33
  %179 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %180 = call i32 @lima_regulator_fini(%struct.lima_device* %179)
  br label %181

181:                                              ; preds = %178, %23
  %182 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %183 = call i32 @lima_clk_fini(%struct.lima_device* %182)
  %184 = load i32, i32* %4, align 4
  store i32 %184, i32* %2, align 4
  br label %185

185:                                              ; preds = %181, %125, %16
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local i32 @dma_set_coherent_mask(i32, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @lima_clk_init(%struct.lima_device*) #1

declare dso_local i32 @lima_regulator_init(%struct.lima_device*) #1

declare dso_local i32 @lima_vm_create(%struct.lima_device*) #1

declare dso_local i64 @dma_alloc_wc(i32, i32, i32*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(i32, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @lima_init_ip(%struct.lima_device*, i32) #1

declare dso_local i32 @lima_init_gp_pipe(%struct.lima_device*) #1

declare dso_local i32 @lima_init_pp_pipe(%struct.lima_device*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @lima_fini_gp_pipe(%struct.lima_device*) #1

declare dso_local i32 @lima_fini_ip(%struct.lima_device*, i32) #1

declare dso_local i32 @dma_free_wc(i32, i32, i64, i32) #1

declare dso_local i32 @lima_vm_put(i32) #1

declare dso_local i32 @lima_regulator_fini(%struct.lima_device*) #1

declare dso_local i32 @lima_clk_fini(%struct.lima_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
