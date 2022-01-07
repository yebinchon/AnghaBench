; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_gdp.c_sti_gdp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_gdp.c_sti_gdp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_gdp = type { i8*, %struct.TYPE_7__*, i8*, i8*, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i8*, i8* }

@GDP_NODE_PER_FIELD = common dso_local global i32 0, align 4
@GDP_NODE_NB_BANK = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to allocate memory for GDP node\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Mem alignment failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"node[%d].top_field=%p\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"node[%d].btm_field=%p\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"st,stih407-compositor\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"pix_gdp1\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"pix_gdp2\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"pix_gdp3\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"pix_gdp4\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"GDP id not recognized\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"Cannot get %s clock\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"main_parent\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Cannot get main_parent clock\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"aux_parent\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"Cannot get aux_parent clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sti_gdp*)* @sti_gdp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sti_gdp_init(%struct.sti_gdp* %0) #0 {
  %2 = alloca %struct.sti_gdp*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.sti_gdp* %0, %struct.sti_gdp** %2, align 8
  %9 = load %struct.sti_gdp*, %struct.sti_gdp** %2, align 8
  %10 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %9, i32 0, i32 1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %3, align 8
  %14 = load i32, i32* @GDP_NODE_PER_FIELD, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 4, %15
  %17 = load i32, i32* @GDP_NODE_NB_BANK, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %16, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %7, align 4
  %21 = load %struct.sti_gdp*, %struct.sti_gdp** %2, align 8
  %22 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %21, i32 0, i32 1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @dma_alloc_wc(%struct.TYPE_7__* %23, i32 %24, i32* %4, i32 %25)
  store i8* %26, i8** %5, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %1
  %30 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %165

31:                                               ; preds = %1
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @memset(i8* %32, i32 0, i32 %33)
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %102, %31
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @GDP_NODE_NB_BANK, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %105

39:                                               ; preds = %35
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, 15
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %165

45:                                               ; preds = %39
  %46 = load i8*, i8** %5, align 8
  %47 = load %struct.sti_gdp*, %struct.sti_gdp** %2, align 8
  %48 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %47, i32 0, i32 5
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 3
  store i8* %46, i8** %53, align 8
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.sti_gdp*, %struct.sti_gdp** %2, align 8
  %56 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %55, i32 0, i32 5
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i32 %54, i32* %61, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %62, i8* %63)
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr i8, i8* %65, i64 4
  store i8* %66, i8** %5, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = add i64 %68, 4
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = and i32 %71, 15
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %45
  %75 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %165

76:                                               ; preds = %45
  %77 = load i8*, i8** %5, align 8
  %78 = load %struct.sti_gdp*, %struct.sti_gdp** %2, align 8
  %79 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %78, i32 0, i32 5
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 2
  store i8* %77, i8** %84, align 8
  %85 = load i32, i32* %4, align 4
  %86 = load %struct.sti_gdp*, %struct.sti_gdp** %2, align 8
  %87 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %86, i32 0, i32 5
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  store i32 %85, i32* %92, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load i8*, i8** %5, align 8
  %95 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %93, i8* %94)
  %96 = load i8*, i8** %5, align 8
  %97 = getelementptr i8, i8* %96, i64 4
  store i8* %97, i8** %5, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = add i64 %99, 4
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %76
  %103 = load i32, i32* %6, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %6, align 4
  br label %35

105:                                              ; preds = %35
  %106 = load %struct.device_node*, %struct.device_node** %3, align 8
  %107 = call i64 @of_device_is_compatible(%struct.device_node* %106, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %165

109:                                              ; preds = %105
  %110 = load %struct.sti_gdp*, %struct.sti_gdp** %2, align 8
  %111 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  switch i32 %113, label %118 [
    i32 131, label %114
    i32 130, label %115
    i32 129, label %116
    i32 128, label %117
  ]

114:                                              ; preds = %109
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  br label %120

115:                                              ; preds = %109
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %8, align 8
  br label %120

116:                                              ; preds = %109
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8** %8, align 8
  br label %120

117:                                              ; preds = %109
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8** %8, align 8
  br label %120

118:                                              ; preds = %109
  %119 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  br label %165

120:                                              ; preds = %117, %116, %115, %114
  %121 = load %struct.sti_gdp*, %struct.sti_gdp** %2, align 8
  %122 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %121, i32 0, i32 1
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = load i8*, i8** %8, align 8
  %125 = call i8* @devm_clk_get(%struct.TYPE_7__* %123, i8* %124)
  %126 = load %struct.sti_gdp*, %struct.sti_gdp** %2, align 8
  %127 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %126, i32 0, i32 3
  store i8* %125, i8** %127, align 8
  %128 = load %struct.sti_gdp*, %struct.sti_gdp** %2, align 8
  %129 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %128, i32 0, i32 3
  %130 = load i8*, i8** %129, align 8
  %131 = call i64 @IS_ERR(i8* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %120
  %134 = load i8*, i8** %8, align 8
  %135 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* %134)
  br label %136

136:                                              ; preds = %133, %120
  %137 = load %struct.sti_gdp*, %struct.sti_gdp** %2, align 8
  %138 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %137, i32 0, i32 1
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = call i8* @devm_clk_get(%struct.TYPE_7__* %139, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %141 = load %struct.sti_gdp*, %struct.sti_gdp** %2, align 8
  %142 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %141, i32 0, i32 2
  store i8* %140, i8** %142, align 8
  %143 = load %struct.sti_gdp*, %struct.sti_gdp** %2, align 8
  %144 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %143, i32 0, i32 2
  %145 = load i8*, i8** %144, align 8
  %146 = call i64 @IS_ERR(i8* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %136
  %149 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0))
  br label %150

150:                                              ; preds = %148, %136
  %151 = load %struct.sti_gdp*, %struct.sti_gdp** %2, align 8
  %152 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %151, i32 0, i32 1
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %152, align 8
  %154 = call i8* @devm_clk_get(%struct.TYPE_7__* %153, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %155 = load %struct.sti_gdp*, %struct.sti_gdp** %2, align 8
  %156 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %155, i32 0, i32 0
  store i8* %154, i8** %156, align 8
  %157 = load %struct.sti_gdp*, %struct.sti_gdp** %2, align 8
  %158 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = call i64 @IS_ERR(i8* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %150
  %163 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0))
  br label %164

164:                                              ; preds = %162, %150
  br label %165

165:                                              ; preds = %29, %43, %74, %118, %164, %105
  ret void
}

declare dso_local i8* @dma_alloc_wc(%struct.TYPE_7__*, i32, i32*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i8*) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_7__*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
