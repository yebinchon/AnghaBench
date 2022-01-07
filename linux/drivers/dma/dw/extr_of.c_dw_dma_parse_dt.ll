; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw/extr_of.c_dw_dma_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw/extr_of.c_dw_dma_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_dma_platform_data = type { i32, i32, i8, i32, i32, i32*, i32*, i32 }
%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@DW_DMA_MAX_NR_MASTERS = common dso_local global i32 0, align 4
@DW_DMA_MAX_NR_CHANNELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Missing DT data\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"dma-masters\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"dma-channels\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"chan_allocation_order\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"chan_priority\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"block_size\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"data-width\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"data_width\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"multi-block\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"snps,dma-protection-control\00", align 1
@CHAN_PROTCTL_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dw_dma_platform_data* @dw_dma_parse_dt(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.dw_dma_platform_data*, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.dw_dma_platform_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %4, align 8
  %17 = load i32, i32* @DW_DMA_MAX_NR_MASTERS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %7, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %21 = load i32, i32* @DW_DMA_MAX_NR_CHANNELS, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %9, align 8
  %24 = load %struct.device_node*, %struct.device_node** %4, align 8
  %25 = icmp ne %struct.device_node* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %1
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i32 @dev_err(%struct.TYPE_3__* %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store %struct.dw_dma_platform_data* null, %struct.dw_dma_platform_data** %2, align 8
  store i32 1, i32* %12, align 4
  br label %201

30:                                               ; preds = %1
  %31 = load %struct.device_node*, %struct.device_node** %4, align 8
  %32 = call i64 @of_property_read_u32(%struct.device_node* %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %10)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store %struct.dw_dma_platform_data* null, %struct.dw_dma_platform_data** %2, align 8
  store i32 1, i32* %12, align 4
  br label %201

35:                                               ; preds = %30
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 1
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @DW_DMA_MAX_NR_MASTERS, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %35
  store %struct.dw_dma_platform_data* null, %struct.dw_dma_platform_data** %2, align 8
  store i32 1, i32* %12, align 4
  br label %201

43:                                               ; preds = %38
  %44 = load %struct.device_node*, %struct.device_node** %4, align 8
  %45 = call i64 @of_property_read_u32(%struct.device_node* %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %11)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store %struct.dw_dma_platform_data* null, %struct.dw_dma_platform_data** %2, align 8
  store i32 1, i32* %12, align 4
  br label %201

48:                                               ; preds = %43
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @DW_DMA_MAX_NR_CHANNELS, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store %struct.dw_dma_platform_data* null, %struct.dw_dma_platform_data** %2, align 8
  store i32 1, i32* %12, align 4
  br label %201

53:                                               ; preds = %48
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call %struct.dw_dma_platform_data* @devm_kzalloc(%struct.TYPE_3__* %55, i32 48, i32 %56)
  store %struct.dw_dma_platform_data* %57, %struct.dw_dma_platform_data** %5, align 8
  %58 = load %struct.dw_dma_platform_data*, %struct.dw_dma_platform_data** %5, align 8
  %59 = icmp ne %struct.dw_dma_platform_data* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %53
  store %struct.dw_dma_platform_data* null, %struct.dw_dma_platform_data** %2, align 8
  store i32 1, i32* %12, align 4
  br label %201

61:                                               ; preds = %53
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.dw_dma_platform_data*, %struct.dw_dma_platform_data** %5, align 8
  %64 = getelementptr inbounds %struct.dw_dma_platform_data, %struct.dw_dma_platform_data* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.dw_dma_platform_data*, %struct.dw_dma_platform_data** %5, align 8
  %67 = getelementptr inbounds %struct.dw_dma_platform_data, %struct.dw_dma_platform_data* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.device_node*, %struct.device_node** %4, align 8
  %69 = call i64 @of_property_read_u32(%struct.device_node* %68, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32* %6)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %61
  %72 = load i32, i32* %6, align 4
  %73 = trunc i32 %72 to i8
  %74 = load %struct.dw_dma_platform_data*, %struct.dw_dma_platform_data** %5, align 8
  %75 = getelementptr inbounds %struct.dw_dma_platform_data, %struct.dw_dma_platform_data* %74, i32 0, i32 2
  store i8 %73, i8* %75, align 8
  br label %76

76:                                               ; preds = %71, %61
  %77 = load %struct.device_node*, %struct.device_node** %4, align 8
  %78 = call i64 @of_property_read_u32(%struct.device_node* %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32* %6)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.dw_dma_platform_data*, %struct.dw_dma_platform_data** %5, align 8
  %83 = getelementptr inbounds %struct.dw_dma_platform_data, %struct.dw_dma_platform_data* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %80, %76
  %85 = load %struct.device_node*, %struct.device_node** %4, align 8
  %86 = call i64 @of_property_read_u32(%struct.device_node* %85, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32* %6)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.dw_dma_platform_data*, %struct.dw_dma_platform_data** %5, align 8
  %91 = getelementptr inbounds %struct.dw_dma_platform_data, %struct.dw_dma_platform_data* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 8
  br label %92

92:                                               ; preds = %88, %84
  %93 = load %struct.device_node*, %struct.device_node** %4, align 8
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @of_property_read_u32_array(%struct.device_node* %93, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32* %20, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %117, label %97

97:                                               ; preds = %92
  store i32 0, i32* %6, align 4
  br label %98

98:                                               ; preds = %113, %97
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %116

102:                                              ; preds = %98
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %20, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.dw_dma_platform_data*, %struct.dw_dma_platform_data** %5, align 8
  %108 = getelementptr inbounds %struct.dw_dma_platform_data, %struct.dw_dma_platform_data* %107, i32 0, i32 5
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 %106, i32* %112, align 4
  br label %113

113:                                              ; preds = %102
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %6, align 4
  br label %98

116:                                              ; preds = %98
  br label %145

117:                                              ; preds = %92
  %118 = load %struct.device_node*, %struct.device_node** %4, align 8
  %119 = load i32, i32* %10, align 4
  %120 = call i32 @of_property_read_u32_array(%struct.device_node* %118, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32* %20, i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %144, label %122

122:                                              ; preds = %117
  store i32 0, i32* %6, align 4
  br label %123

123:                                              ; preds = %140, %122
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* %10, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %143

127:                                              ; preds = %123
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %20, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %131, 7
  %133 = call i32 @BIT(i32 %132)
  %134 = load %struct.dw_dma_platform_data*, %struct.dw_dma_platform_data** %5, align 8
  %135 = getelementptr inbounds %struct.dw_dma_platform_data, %struct.dw_dma_platform_data* %134, i32 0, i32 5
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %6, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  store i32 %133, i32* %139, align 4
  br label %140

140:                                              ; preds = %127
  %141 = load i32, i32* %6, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %6, align 4
  br label %123

143:                                              ; preds = %123
  br label %144

144:                                              ; preds = %143, %117
  br label %145

145:                                              ; preds = %144, %116
  %146 = load %struct.device_node*, %struct.device_node** %4, align 8
  %147 = load i32, i32* %11, align 4
  %148 = call i32 @of_property_read_u32_array(%struct.device_node* %146, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32* %23, i32 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %170, label %150

150:                                              ; preds = %145
  store i32 0, i32* %6, align 4
  br label %151

151:                                              ; preds = %166, %150
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* %11, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %169

155:                                              ; preds = %151
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %23, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.dw_dma_platform_data*, %struct.dw_dma_platform_data** %5, align 8
  %161 = getelementptr inbounds %struct.dw_dma_platform_data, %struct.dw_dma_platform_data* %160, i32 0, i32 6
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %6, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  store i32 %159, i32* %165, align 4
  br label %166

166:                                              ; preds = %155
  %167 = load i32, i32* %6, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %6, align 4
  br label %151

169:                                              ; preds = %151
  br label %186

170:                                              ; preds = %145
  store i32 0, i32* %6, align 4
  br label %171

171:                                              ; preds = %182, %170
  %172 = load i32, i32* %6, align 4
  %173 = load i32, i32* %11, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %185

175:                                              ; preds = %171
  %176 = load %struct.dw_dma_platform_data*, %struct.dw_dma_platform_data** %5, align 8
  %177 = getelementptr inbounds %struct.dw_dma_platform_data, %struct.dw_dma_platform_data* %176, i32 0, i32 6
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %6, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  store i32 1, i32* %181, align 4
  br label %182

182:                                              ; preds = %175
  %183 = load i32, i32* %6, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %6, align 4
  br label %171

185:                                              ; preds = %171
  br label %186

186:                                              ; preds = %185, %169
  %187 = load %struct.device_node*, %struct.device_node** %4, align 8
  %188 = call i64 @of_property_read_u32(%struct.device_node* %187, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32* %6)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %199, label %190

190:                                              ; preds = %186
  %191 = load i32, i32* %6, align 4
  %192 = load i32, i32* @CHAN_PROTCTL_MASK, align 4
  %193 = icmp sgt i32 %191, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %190
  store %struct.dw_dma_platform_data* null, %struct.dw_dma_platform_data** %2, align 8
  store i32 1, i32* %12, align 4
  br label %201

195:                                              ; preds = %190
  %196 = load i32, i32* %6, align 4
  %197 = load %struct.dw_dma_platform_data*, %struct.dw_dma_platform_data** %5, align 8
  %198 = getelementptr inbounds %struct.dw_dma_platform_data, %struct.dw_dma_platform_data* %197, i32 0, i32 7
  store i32 %196, i32* %198, align 8
  br label %199

199:                                              ; preds = %195, %186
  %200 = load %struct.dw_dma_platform_data*, %struct.dw_dma_platform_data** %5, align 8
  store %struct.dw_dma_platform_data* %200, %struct.dw_dma_platform_data** %2, align 8
  store i32 1, i32* %12, align 4
  br label %201

201:                                              ; preds = %199, %194, %60, %52, %47, %42, %34, %26
  %202 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %202)
  %203 = load %struct.dw_dma_platform_data*, %struct.dw_dma_platform_data** %2, align 8
  ret %struct.dw_dma_platform_data* %203
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*) #2

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #2

declare dso_local %struct.dw_dma_platform_data* @devm_kzalloc(%struct.TYPE_3__*, i32, i32) #2

declare dso_local i32 @of_property_read_u32_array(%struct.device_node*, i8*, i32*, i32) #2

declare dso_local i32 @BIT(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
