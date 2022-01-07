; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_event_remap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_event_remap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_engine = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.regmap* }
%struct.regmap = type { i32 }
%struct.device_node = type opaque
%struct.property = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"gpr\00", align 1
@__const.sdma_event_remap.propname = private unnamed_addr constant [21 x i8] c"fsl,sdma-event-remap\00", align 16
@.str.1 = private unnamed_addr constant [31 x i8] c"no event needs to be remapped\0A\00", align 1
@EVENT_REMAP_CELLS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"the property %s must modulo %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"failed to get gpr regmap\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"failed to read property %s index %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdma_engine*)* @sdma_event_remap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_event_remap(%struct.sdma_engine* %0) #0 {
  %2 = alloca %struct.sdma_engine*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.property*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca [21 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sdma_engine* %0, %struct.sdma_engine** %2, align 8
  %14 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %15 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.regmap*, %struct.regmap** %17, align 8
  %19 = bitcast %struct.regmap* %18 to %struct.device_node*
  store %struct.device_node* %19, %struct.device_node** %3, align 8
  %20 = load %struct.device_node*, %struct.device_node** %3, align 8
  %21 = bitcast %struct.device_node* %20 to %struct.regmap*
  %22 = call %struct.regmap* @of_parse_phandle(%struct.regmap* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 0)
  %23 = bitcast %struct.regmap* %22 to %struct.device_node*
  store %struct.device_node* %23, %struct.device_node** %4, align 8
  %24 = bitcast [21 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %24, i8* align 16 getelementptr inbounds ([21 x i8], [21 x i8]* @__const.sdma_event_remap.propname, i32 0, i32 0), i64 21, i1 false)
  store i32 0, i32* %13, align 4
  %25 = load %struct.device_node*, %struct.device_node** %3, align 8
  %26 = bitcast %struct.device_node* %25 to %struct.regmap*
  %27 = call i64 @IS_ERR(%struct.regmap* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %1
  %30 = load %struct.device_node*, %struct.device_node** %4, align 8
  %31 = bitcast %struct.device_node* %30 to %struct.regmap*
  %32 = call i64 @IS_ERR(%struct.regmap* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %1
  br label %156

35:                                               ; preds = %29
  %36 = load %struct.device_node*, %struct.device_node** %3, align 8
  %37 = bitcast %struct.device_node* %36 to %struct.regmap*
  %38 = getelementptr inbounds [21 x i8], [21 x i8]* %7, i64 0, i64 0
  %39 = call %struct.property* @of_find_property(%struct.regmap* %37, i8* %38, i32* null)
  store %struct.property* %39, %struct.property** %5, align 8
  %40 = load %struct.property*, %struct.property** %5, align 8
  %41 = icmp ne %struct.property* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load %struct.property*, %struct.property** %5, align 8
  %44 = getelementptr inbounds %struct.property, %struct.property* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = udiv i64 %46, 4
  br label %49

48:                                               ; preds = %35
  br label %49

49:                                               ; preds = %48, %42
  %50 = phi i64 [ %47, %42 ], [ 0, %48 ]
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %56 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = call i32 @dev_dbg(%struct.TYPE_3__* %57, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %156

59:                                               ; preds = %49
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @EVENT_REMAP_CELLS, align 4
  %62 = srem i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %66 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds [21 x i8], [21 x i8]* %7, i64 0, i64 0
  %69 = load i32, i32* @EVENT_REMAP_CELLS, align 4
  %70 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_err(%struct.TYPE_3__* %67, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %68, i32 %69)
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %13, align 4
  br label %156

73:                                               ; preds = %59
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.device_node*, %struct.device_node** %4, align 8
  %76 = bitcast %struct.device_node* %75 to %struct.regmap*
  %77 = call %struct.regmap* @syscon_node_to_regmap(%struct.regmap* %76)
  store %struct.regmap* %77, %struct.regmap** %6, align 8
  %78 = load %struct.regmap*, %struct.regmap** %6, align 8
  %79 = call i64 @IS_ERR(%struct.regmap* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %74
  %82 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %83 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %82, i32 0, i32 0
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_err(%struct.TYPE_3__* %84, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %86 = load %struct.regmap*, %struct.regmap** %6, align 8
  %87 = call i32 @PTR_ERR(%struct.regmap* %86)
  store i32 %87, i32* %13, align 4
  br label %156

88:                                               ; preds = %74
  store i32 0, i32* %12, align 4
  br label %89

89:                                               ; preds = %151, %88
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %155

93:                                               ; preds = %89
  %94 = load %struct.device_node*, %struct.device_node** %3, align 8
  %95 = bitcast %struct.device_node* %94 to %struct.regmap*
  %96 = getelementptr inbounds [21 x i8], [21 x i8]* %7, i64 0, i64 0
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @of_property_read_u32_index(%struct.regmap* %95, i8* %96, i32 %97, i32* %8)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %93
  %102 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %103 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %102, i32 0, i32 0
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = getelementptr inbounds [21 x i8], [21 x i8]* %7, i64 0, i64 0
  %106 = load i32, i32* %12, align 4
  %107 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_err(%struct.TYPE_3__* %104, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %105, i32 %106)
  br label %156

108:                                              ; preds = %93
  %109 = load %struct.device_node*, %struct.device_node** %3, align 8
  %110 = bitcast %struct.device_node* %109 to %struct.regmap*
  %111 = getelementptr inbounds [21 x i8], [21 x i8]* %7, i64 0, i64 0
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %112, 1
  %114 = call i32 @of_property_read_u32_index(%struct.regmap* %110, i8* %111, i32 %113, i32* %10)
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %13, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %108
  %118 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %119 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %118, i32 0, i32 0
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %119, align 8
  %121 = getelementptr inbounds [21 x i8], [21 x i8]* %7, i64 0, i64 0
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, 1
  %124 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_err(%struct.TYPE_3__* %120, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %121, i32 %123)
  br label %156

125:                                              ; preds = %108
  %126 = load %struct.device_node*, %struct.device_node** %3, align 8
  %127 = bitcast %struct.device_node* %126 to %struct.regmap*
  %128 = getelementptr inbounds [21 x i8], [21 x i8]* %7, i64 0, i64 0
  %129 = load i32, i32* %12, align 4
  %130 = add nsw i32 %129, 2
  %131 = call i32 @of_property_read_u32_index(%struct.regmap* %127, i8* %128, i32 %130, i32* %9)
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %13, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %125
  %135 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %136 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %135, i32 0, i32 0
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %136, align 8
  %138 = getelementptr inbounds [21 x i8], [21 x i8]* %7, i64 0, i64 0
  %139 = load i32, i32* %12, align 4
  %140 = add nsw i32 %139, 2
  %141 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_err(%struct.TYPE_3__* %137, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %138, i32 %140)
  br label %156

142:                                              ; preds = %125
  %143 = load %struct.regmap*, %struct.regmap** %6, align 8
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* %10, align 4
  %146 = call i32 @BIT(i32 %145)
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* %10, align 4
  %149 = shl i32 %147, %148
  %150 = call i32 @regmap_update_bits(%struct.regmap* %143, i32 %144, i32 %146, i32 %149)
  br label %151

151:                                              ; preds = %142
  %152 = load i32, i32* @EVENT_REMAP_CELLS, align 4
  %153 = load i32, i32* %12, align 4
  %154 = add nsw i32 %153, %152
  store i32 %154, i32* %12, align 4
  br label %89

155:                                              ; preds = %89
  br label %156

156:                                              ; preds = %155, %134, %117, %101, %81, %64, %54, %34
  %157 = load %struct.device_node*, %struct.device_node** %4, align 8
  %158 = bitcast %struct.device_node* %157 to %struct.regmap*
  %159 = call i64 @IS_ERR(%struct.regmap* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %165, label %161

161:                                              ; preds = %156
  %162 = load %struct.device_node*, %struct.device_node** %4, align 8
  %163 = bitcast %struct.device_node* %162 to %struct.regmap*
  %164 = call i32 @of_node_put(%struct.regmap* %163)
  br label %165

165:                                              ; preds = %161, %156
  %166 = load i32, i32* %13, align 4
  ret i32 %166
}

declare dso_local %struct.regmap* @of_parse_phandle(%struct.regmap*, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local %struct.property* @of_find_property(%struct.regmap*, i8*, i32*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*, ...) #1

declare dso_local %struct.regmap* @syscon_node_to_regmap(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @of_property_read_u32_index(%struct.regmap*, i8*, i32, i32*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @of_node_put(%struct.regmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
