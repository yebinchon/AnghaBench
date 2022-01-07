; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_hdmi_i2c.c_xfer_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_hdmi_i2c.c_xfer_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_hdmi = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.i2c_msg = type { i32, i32, i32, i64 }

@SUN4I_HDMI_DDC_CTRL_REG = common dso_local global i64 0, align 8
@SUN4I_HDMI_DDC_CTRL_FIFO_DIR_MASK = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@SUN4I_HDMI_DDC_CTRL_FIFO_DIR_READ = common dso_local global i32 0, align 4
@SUN4I_HDMI_DDC_CTRL_FIFO_DIR_WRITE = common dso_local global i32 0, align 4
@RX_THRESHOLD = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SUN4I_HDMI_DDC_CMD_IMPLICIT_READ = common dso_local global i32 0, align 4
@SUN4I_HDMI_DDC_CMD_IMPLICIT_WRITE = common dso_local global i32 0, align 4
@SUN4I_HDMI_DDC_INT_STATUS_ERROR_MASK = common dso_local global i32 0, align 4
@SUN4I_HDMI_DDC_INT_STATUS_FIFO_REQUEST = common dso_local global i32 0, align 4
@SUN4I_HDMI_DDC_INT_STATUS_TRANSFER_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sun4i_hdmi*, %struct.i2c_msg*)* @xfer_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfer_msg(%struct.sun4i_hdmi* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sun4i_hdmi*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sun4i_hdmi* %0, %struct.sun4i_hdmi** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  %9 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %4, align 8
  %10 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %9, i32 0, i32 6
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %47

15:                                               ; preds = %2
  %16 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %4, align 8
  %17 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %16, i32 0, i32 10
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SUN4I_HDMI_DDC_CTRL_REG, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl(i64 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @SUN4I_HDMI_DDC_CTRL_FIFO_DIR_MASK, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %8, align 4
  %26 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @I2C_M_RD, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %15
  %33 = load i32, i32* @SUN4I_HDMI_DDC_CTRL_FIFO_DIR_READ, align 4
  br label %36

34:                                               ; preds = %15
  %35 = load i32, i32* @SUN4I_HDMI_DDC_CTRL_FIFO_DIR_WRITE, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %4, align 8
  %42 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %41, i32 0, i32 10
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SUN4I_HDMI_DDC_CTRL_REG, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 %40, i64 %45)
  br label %47

47:                                               ; preds = %36, %2
  %48 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %4, align 8
  %49 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %48, i32 0, i32 9
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @regmap_field_write(i32 %50, i32 0)
  %52 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %4, align 8
  %53 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %52, i32 0, i32 8
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %56 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @regmap_field_write(i32 %54, i32 %57)
  %59 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %4, align 8
  %60 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %4, align 8
  %63 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %62, i32 0, i32 6
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 0, i32 1
  %70 = call i32 @regmap_field_write(i32 %61, i32 %69)
  %71 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %4, align 8
  %72 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @RX_THRESHOLD, align 4
  %75 = call i32 @regmap_field_write(i32 %73, i32 %74)
  %76 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %4, align 8
  %77 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @regmap_field_write(i32 %78, i32 1)
  %80 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %4, align 8
  %81 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = call i64 @regmap_field_read_poll_timeout(i32 %82, i32 %83, i32 %87, i32 100, i32 2000)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %47
  %91 = load i32, i32* @EIO, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %196

93:                                               ; preds = %47
  %94 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %4, align 8
  %95 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %98 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @regmap_field_write(i32 %96, i32 %99)
  %101 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %4, align 8
  %102 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %105 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @I2C_M_RD, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %93
  %111 = load i32, i32* @SUN4I_HDMI_DDC_CMD_IMPLICIT_READ, align 4
  br label %114

112:                                              ; preds = %93
  %113 = load i32, i32* @SUN4I_HDMI_DDC_CMD_IMPLICIT_WRITE, align 4
  br label %114

114:                                              ; preds = %112, %110
  %115 = phi i32 [ %111, %110 ], [ %113, %112 ]
  %116 = call i32 @regmap_field_write(i32 %103, i32 %115)
  %117 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %4, align 8
  %118 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @SUN4I_HDMI_DDC_INT_STATUS_ERROR_MASK, align 4
  %121 = load i32, i32* @SUN4I_HDMI_DDC_INT_STATUS_FIFO_REQUEST, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @SUN4I_HDMI_DDC_INT_STATUS_TRANSFER_COMPLETE, align 4
  %124 = or i32 %122, %123
  %125 = call i32 @regmap_field_force_write(i32 %119, i32 %124)
  %126 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %4, align 8
  %127 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @regmap_field_write(i32 %128, i32 1)
  store i32 0, i32* %6, align 4
  br label %130

130:                                              ; preds = %160, %114
  %131 = load i32, i32* %6, align 4
  %132 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %133 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = icmp slt i32 %131, %134
  br i1 %135, label %136, label %164

136:                                              ; preds = %130
  %137 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %4, align 8
  %138 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %139 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = load i32, i32* %6, align 4
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %140, %142
  %144 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %145 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* %6, align 4
  %148 = sub nsw i32 %146, %147
  %149 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %150 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @I2C_M_RD, align 4
  %153 = and i32 %151, %152
  %154 = call i32 @fifo_transfer(%struct.sun4i_hdmi* %137, i64 %143, i32 %148, i32 %153)
  store i32 %154, i32* %7, align 4
  %155 = load i32, i32* %7, align 4
  %156 = icmp sle i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %136
  %158 = load i32, i32* %7, align 4
  store i32 %158, i32* %3, align 4
  br label %196

159:                                              ; preds = %136
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* %6, align 4
  %163 = add nsw i32 %162, %161
  store i32 %163, i32* %6, align 4
  br label %130

164:                                              ; preds = %130
  %165 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %4, align 8
  %166 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* %8, align 4
  %170 = icmp ne i32 %169, 0
  %171 = xor i1 %170, true
  %172 = zext i1 %171 to i32
  %173 = call i64 @regmap_field_read_poll_timeout(i32 %167, i32 %168, i32 %172, i32 100, i32 100000)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %164
  %176 = load i32, i32* @EIO, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %3, align 4
  br label %196

178:                                              ; preds = %164
  %179 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %4, align 8
  %180 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @regmap_field_read(i32 %181, i32* %8)
  %183 = load i32, i32* %8, align 4
  %184 = load i32, i32* @SUN4I_HDMI_DDC_INT_STATUS_ERROR_MASK, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %192, label %187

187:                                              ; preds = %178
  %188 = load i32, i32* %8, align 4
  %189 = load i32, i32* @SUN4I_HDMI_DDC_INT_STATUS_TRANSFER_COMPLETE, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %195, label %192

192:                                              ; preds = %187, %178
  %193 = load i32, i32* @EIO, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %3, align 4
  br label %196

195:                                              ; preds = %187
  store i32 0, i32* %3, align 4
  br label %196

196:                                              ; preds = %195, %192, %175, %157, %90
  %197 = load i32, i32* %3, align 4
  ret i32 %197
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @regmap_field_write(i32, i32) #1

declare dso_local i64 @regmap_field_read_poll_timeout(i32, i32, i32, i32, i32) #1

declare dso_local i32 @regmap_field_force_write(i32, i32) #1

declare dso_local i32 @fifo_transfer(%struct.sun4i_hdmi*, i64, i32, i32) #1

declare dso_local i32 @regmap_field_read(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
