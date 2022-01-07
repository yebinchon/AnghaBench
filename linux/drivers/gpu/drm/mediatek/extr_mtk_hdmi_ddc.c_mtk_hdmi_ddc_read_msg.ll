; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi_ddc.c_mtk_hdmi_ddc_read_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi_ddc.c_mtk_hdmi_ddc_read_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_hdmi_ddc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.i2c_msg = type { i32, i32, i8** }

@DDCM_START = common dso_local global i32 0, align 4
@DDC_DDCMD0 = common dso_local global i32 0, align 4
@DDC_DDCMCTL1 = common dso_local global i32 0, align 4
@DDCM_PGLEN_MASK = common dso_local global i32 0, align 4
@DDCM_PGLEN_OFFSET = common dso_local global i32 0, align 4
@DDCM_WRITE_DATA = common dso_local global i32 0, align 4
@DDCM_ACK_MASK = common dso_local global i32 0, align 4
@DDCM_ACK_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"ack = 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"i2c ack err!\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@DDCM_READ_DATA_NO_ACK = common dso_local global i32 0, align 4
@DDCM_READ_DATA_ACK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Address NACK! ACK(0x%x)\0A\00", align 1
@DDC_DDCMD1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_hdmi_ddc*, %struct.i2c_msg*)* @mtk_hdmi_ddc_read_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_hdmi_ddc_read_msg(%struct.mtk_hdmi_ddc* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_hdmi_ddc*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mtk_hdmi_ddc* %0, %struct.mtk_hdmi_ddc** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  %17 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %4, align 8
  %18 = getelementptr inbounds %struct.mtk_hdmi_ddc, %struct.mtk_hdmi_ddc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.device*, %struct.device** %20, align 8
  store %struct.device* %21, %struct.device** %6, align 8
  store i32 0, i32* %12, align 4
  %22 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %4, align 8
  %23 = load i32, i32* @DDCM_START, align 4
  %24 = call i32 @ddcm_trigger_mode(%struct.mtk_hdmi_ddc* %22, i32 %23)
  %25 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %4, align 8
  %26 = load i32, i32* @DDC_DDCMD0, align 4
  %27 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = shl i32 %29, 1
  %31 = or i32 %30, 1
  %32 = call i32 @sif_write_mask(%struct.mtk_hdmi_ddc* %25, i32 %26, i32 255, i32 0, i32 %31)
  %33 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %4, align 8
  %34 = load i32, i32* @DDC_DDCMCTL1, align 4
  %35 = load i32, i32* @DDCM_PGLEN_MASK, align 4
  %36 = load i32, i32* @DDCM_PGLEN_OFFSET, align 4
  %37 = call i32 @sif_write_mask(%struct.mtk_hdmi_ddc* %33, i32 %34, i32 %35, i32 %36, i32 0)
  %38 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %4, align 8
  %39 = load i32, i32* @DDCM_WRITE_DATA, align 4
  %40 = call i32 @ddcm_trigger_mode(%struct.mtk_hdmi_ddc* %38, i32 %39)
  %41 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %4, align 8
  %42 = load i32, i32* @DDC_DDCMCTL1, align 4
  %43 = load i32, i32* @DDCM_ACK_MASK, align 4
  %44 = load i32, i32* @DDCM_ACK_OFFSET, align 4
  %45 = call i8* @sif_read_mask(%struct.mtk_hdmi_ddc* %41, i32 %42, i32 %43, i32 %44)
  %46 = ptrtoint i8* %45 to i32
  store i32 %46, i32* %13, align 4
  %47 = load %struct.device*, %struct.device** %6, align 8
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @dev_dbg(%struct.device* %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 1
  br i1 %51, label %52, label %57

52:                                               ; preds = %2
  %53 = load %struct.device*, %struct.device** %6, align 8
  %54 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @ENXIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %179

57:                                               ; preds = %2
  %58 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %59 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %7, align 4
  %61 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %62 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sdiv i32 %64, 8
  store i32 %65, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %66

66:                                               ; preds = %171, %57
  %67 = load i32, i32* %7, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %178

69:                                               ; preds = %66
  %70 = load i32, i32* %8, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  store i32 8, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %8, align 4
  br label %77

75:                                               ; preds = %69
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %77

77:                                               ; preds = %75, %72
  %78 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %4, align 8
  %79 = load i32, i32* @DDC_DDCMCTL1, align 4
  %80 = load i32, i32* @DDCM_PGLEN_MASK, align 4
  %81 = load i32, i32* @DDCM_PGLEN_OFFSET, align 4
  %82 = load i32, i32* %10, align 4
  %83 = sub nsw i32 %82, 1
  %84 = call i32 @sif_write_mask(%struct.mtk_hdmi_ddc* %78, i32 %79, i32 %80, i32 %81, i32 %83)
  %85 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %4, align 8
  %86 = load i32, i32* %9, align 4
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %90

88:                                               ; preds = %77
  %89 = load i32, i32* @DDCM_READ_DATA_NO_ACK, align 4
  br label %92

90:                                               ; preds = %77
  %91 = load i32, i32* @DDCM_READ_DATA_ACK, align 4
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i32 [ %89, %88 ], [ %91, %90 ]
  %94 = call i32 @ddcm_trigger_mode(%struct.mtk_hdmi_ddc* %85, i32 %93)
  %95 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %4, align 8
  %96 = load i32, i32* @DDC_DDCMCTL1, align 4
  %97 = load i32, i32* @DDCM_ACK_MASK, align 4
  %98 = load i32, i32* @DDCM_ACK_OFFSET, align 4
  %99 = call i8* @sif_read_mask(%struct.mtk_hdmi_ddc* %95, i32 %96, i32 %97, i32 %98)
  %100 = ptrtoint i8* %99 to i32
  store i32 %100, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %101

101:                                              ; preds = %112, %92
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %11, align 4
  %104 = shl i32 1, %103
  %105 = and i32 %102, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load i32, i32* %11, align 4
  %109 = icmp slt i32 %108, 8
  br label %110

110:                                              ; preds = %107, %101
  %111 = phi i1 [ false, %101 ], [ %109, %107 ]
  br i1 %111, label %112, label %115

112:                                              ; preds = %110
  %113 = load i32, i32* %11, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %11, align 4
  br label %101

115:                                              ; preds = %110
  %116 = load i32, i32* %9, align 4
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* %10, align 4
  %121 = sub nsw i32 %120, 1
  %122 = icmp ne i32 %119, %121
  br i1 %122, label %130, label %123

123:                                              ; preds = %118, %115
  %124 = load i32, i32* %9, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %123
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* %10, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %126, %118
  %131 = load %struct.device*, %struct.device** %6, align 8
  %132 = load i32, i32* %13, align 4
  %133 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %131, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %132)
  br label %178

134:                                              ; preds = %126, %123
  %135 = load i32, i32* %10, align 4
  store i32 %135, i32* %14, align 4
  br label %136

136:                                              ; preds = %168, %134
  %137 = load i32, i32* %14, align 4
  %138 = icmp sge i32 %137, 1
  br i1 %138, label %139, label %171

139:                                              ; preds = %136
  %140 = load i32, i32* %14, align 4
  %141 = icmp sgt i32 %140, 4
  br i1 %141, label %142, label %147

142:                                              ; preds = %139
  %143 = load i32, i32* @DDC_DDCMD1, align 4
  store i32 %143, i32* %16, align 4
  %144 = load i32, i32* %14, align 4
  %145 = sub nsw i32 %144, 5
  %146 = mul nsw i32 %145, 8
  store i32 %146, i32* %15, align 4
  br label %152

147:                                              ; preds = %139
  %148 = load i32, i32* @DDC_DDCMD0, align 4
  store i32 %148, i32* %16, align 4
  %149 = load i32, i32* %14, align 4
  %150 = sub nsw i32 %149, 1
  %151 = mul nsw i32 %150, 8
  store i32 %151, i32* %15, align 4
  br label %152

152:                                              ; preds = %147, %142
  %153 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %4, align 8
  %154 = load i32, i32* %16, align 4
  %155 = load i32, i32* %15, align 4
  %156 = shl i32 255, %155
  %157 = load i32, i32* %15, align 4
  %158 = call i8* @sif_read_mask(%struct.mtk_hdmi_ddc* %153, i32 %154, i32 %156, i32 %157)
  %159 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %160 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %159, i32 0, i32 2
  %161 = load i8**, i8*** %160, align 8
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* %14, align 4
  %164 = add nsw i32 %162, %163
  %165 = sub nsw i32 %164, 1
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8*, i8** %161, i64 %166
  store i8* %158, i8** %167, align 8
  br label %168

168:                                              ; preds = %152
  %169 = load i32, i32* %14, align 4
  %170 = add nsw i32 %169, -1
  store i32 %170, i32* %14, align 4
  br label %136

171:                                              ; preds = %136
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* %7, align 4
  %174 = sub nsw i32 %173, %172
  store i32 %174, i32* %7, align 4
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* %12, align 4
  %177 = add nsw i32 %176, %175
  store i32 %177, i32* %12, align 4
  br label %66

178:                                              ; preds = %130, %66
  store i32 0, i32* %3, align 4
  br label %179

179:                                              ; preds = %178, %52
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local i32 @ddcm_trigger_mode(%struct.mtk_hdmi_ddc*, i32) #1

declare dso_local i32 @sif_write_mask(%struct.mtk_hdmi_ddc*, i32, i32, i32, i32) #1

declare dso_local i8* @sif_read_mask(%struct.mtk_hdmi_ddc*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
