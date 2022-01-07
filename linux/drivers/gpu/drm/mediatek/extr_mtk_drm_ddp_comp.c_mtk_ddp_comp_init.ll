; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_ddp_comp.c_mtk_ddp_comp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_ddp_comp.c_mtk_ddp_comp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.mtk_ddp_comp = type { i32, i32*, i32*, i64, i32*, i32 }
%struct.mtk_ddp_comp_funcs = type { i32 }
%struct.platform_device = type { i32 }

@DDP_COMPONENT_ID_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@mtk_ddp_matches = common dso_local global %struct.TYPE_2__* null, align 8
@DDP_COMPONENT_BLS = common dso_local global i32 0, align 4
@DDP_COMPONENT_DPI0 = common dso_local global i32 0, align 4
@DDP_COMPONENT_DPI1 = common dso_local global i32 0, align 4
@DDP_COMPONENT_DSI0 = common dso_local global i32 0, align 4
@DDP_COMPONENT_DSI1 = common dso_local global i32 0, align 4
@DDP_COMPONENT_DSI2 = common dso_local global i32 0, align 4
@DDP_COMPONENT_DSI3 = common dso_local global i32 0, align 4
@DDP_COMPONENT_PWM0 = common dso_local global i32 0, align 4
@MTK_DISP_OVL = common dso_local global i32 0, align 4
@MTK_DISP_RDMA = common dso_local global i32 0, align 4
@MTK_DISP_WDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"mediatek,larb\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Missing mediadek,larb phandle in %pOF node\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Waiting for larb device %pOF\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtk_ddp_comp_init(%struct.device* %0, %struct.device_node* %1, %struct.mtk_ddp_comp* %2, i32 %3, %struct.mtk_ddp_comp_funcs* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.mtk_ddp_comp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mtk_ddp_comp_funcs*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.device_node*, align 8
  %14 = alloca %struct.platform_device*, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store %struct.device_node* %1, %struct.device_node** %8, align 8
  store %struct.mtk_ddp_comp* %2, %struct.mtk_ddp_comp** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.mtk_ddp_comp_funcs* %4, %struct.mtk_ddp_comp_funcs** %11, align 8
  %15 = load i32, i32* %10, align 4
  %16 = icmp ult i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @DDP_COMPONENT_ID_MAX, align 4
  %20 = icmp uge i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17, %5
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %158

24:                                               ; preds = %17
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mtk_ddp_matches, align 8
  %26 = load i32, i32* %10, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %9, align 8
  %33 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.mtk_ddp_comp_funcs*, %struct.mtk_ddp_comp_funcs** %11, align 8
  %35 = icmp ne %struct.mtk_ddp_comp_funcs* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  br label %46

37:                                               ; preds = %24
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mtk_ddp_matches, align 8
  %39 = load i32, i32* %10, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to %struct.mtk_ddp_comp_funcs*
  br label %46

46:                                               ; preds = %37, %36
  %47 = phi %struct.mtk_ddp_comp_funcs* [ %34, %36 ], [ %45, %37 ]
  %48 = ptrtoint %struct.mtk_ddp_comp_funcs* %47 to i32
  %49 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %9, align 8
  %50 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @DDP_COMPONENT_BLS, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %82, label %54

54:                                               ; preds = %46
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @DDP_COMPONENT_DPI0, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %82, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @DDP_COMPONENT_DPI1, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %82, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @DDP_COMPONENT_DSI0, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %82, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @DDP_COMPONENT_DSI1, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %82, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @DDP_COMPONENT_DSI2, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %82, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @DDP_COMPONENT_DSI3, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @DDP_COMPONENT_PWM0, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %78, %74, %70, %66, %62, %58, %54, %46
  %83 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %9, align 8
  %84 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %83, i32 0, i32 4
  store i32* null, i32** %84, align 8
  %85 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %9, align 8
  %86 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %85, i32 0, i32 2
  store i32* null, i32** %86, align 8
  %87 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %9, align 8
  %88 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %87, i32 0, i32 3
  store i64 0, i64* %88, align 8
  store i32 0, i32* %6, align 4
  br label %158

89:                                               ; preds = %78
  %90 = load %struct.device_node*, %struct.device_node** %8, align 8
  %91 = call i32* @of_iomap(%struct.device_node* %90, i32 0)
  %92 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %9, align 8
  %93 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %92, i32 0, i32 4
  store i32* %91, i32** %93, align 8
  %94 = load %struct.device_node*, %struct.device_node** %8, align 8
  %95 = call i64 @of_irq_get(%struct.device_node* %94, i32 0)
  %96 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %9, align 8
  %97 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %96, i32 0, i32 3
  store i64 %95, i64* %97, align 8
  %98 = load %struct.device_node*, %struct.device_node** %8, align 8
  %99 = call i32* @of_clk_get(%struct.device_node* %98, i32 0)
  %100 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %9, align 8
  %101 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %100, i32 0, i32 2
  store i32* %99, i32** %101, align 8
  %102 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %9, align 8
  %103 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = call i64 @IS_ERR(i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %89
  %108 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %9, align 8
  %109 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @PTR_ERR(i32* %110)
  store i32 %111, i32* %6, align 4
  br label %158

112:                                              ; preds = %89
  %113 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %9, align 8
  %114 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %113, i32 0, i32 1
  store i32* null, i32** %114, align 8
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* @MTK_DISP_OVL, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %112
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* @MTK_DISP_RDMA, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %118
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* @MTK_DISP_WDMA, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  store i32 0, i32* %6, align 4
  br label %158

127:                                              ; preds = %122, %118, %112
  %128 = load %struct.device_node*, %struct.device_node** %8, align 8
  %129 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %128, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %129, %struct.device_node** %13, align 8
  %130 = load %struct.device_node*, %struct.device_node** %13, align 8
  %131 = icmp ne %struct.device_node* %130, null
  br i1 %131, label %138, label %132

132:                                              ; preds = %127
  %133 = load %struct.device*, %struct.device** %7, align 8
  %134 = load %struct.device_node*, %struct.device_node** %8, align 8
  %135 = call i32 @dev_err(%struct.device* %133, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %134)
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %6, align 4
  br label %158

138:                                              ; preds = %127
  %139 = load %struct.device_node*, %struct.device_node** %13, align 8
  %140 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %139)
  store %struct.platform_device* %140, %struct.platform_device** %14, align 8
  %141 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  %142 = icmp ne %struct.platform_device* %141, null
  br i1 %142, label %151, label %143

143:                                              ; preds = %138
  %144 = load %struct.device*, %struct.device** %7, align 8
  %145 = load %struct.device_node*, %struct.device_node** %13, align 8
  %146 = call i32 @dev_warn(%struct.device* %144, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), %struct.device_node* %145)
  %147 = load %struct.device_node*, %struct.device_node** %13, align 8
  %148 = call i32 @of_node_put(%struct.device_node* %147)
  %149 = load i32, i32* @EPROBE_DEFER, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %6, align 4
  br label %158

151:                                              ; preds = %138
  %152 = load %struct.device_node*, %struct.device_node** %13, align 8
  %153 = call i32 @of_node_put(%struct.device_node* %152)
  %154 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  %155 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %154, i32 0, i32 0
  %156 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %9, align 8
  %157 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %156, i32 0, i32 1
  store i32* %155, i32** %157, align 8
  store i32 0, i32* %6, align 4
  br label %158

158:                                              ; preds = %151, %143, %132, %126, %107, %82, %21
  %159 = load i32, i32* %6, align 4
  ret i32 %159
}

declare dso_local i32* @of_iomap(%struct.device_node*, i32) #1

declare dso_local i64 @of_irq_get(%struct.device_node*, i32) #1

declare dso_local i32* @of_clk_get(%struct.device_node*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, %struct.device_node*) #1

declare dso_local %struct.platform_device* @of_find_device_by_node(%struct.device_node*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, %struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
