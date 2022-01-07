; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_fb.c_picolcd_fb_send_tile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_fb.c_picolcd_fb_send_tile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.picolcd_data = type { i32, i32, i32 }
%struct.hid_report = type { i32, i32* }

@REPORT_LCD_CMD_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@REPORT_LCD_DATA = common dso_local global i32 0, align 4
@PICOLCD_FAILED = common dso_local global i32 0, align 4
@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.picolcd_data*, i32*, i32, i32)* @picolcd_fb_send_tile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @picolcd_fb_send_tile(%struct.picolcd_data* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.picolcd_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hid_report*, align 8
  %11 = alloca %struct.hid_report*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.picolcd_data* %0, %struct.picolcd_data** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* @REPORT_LCD_CMD_DATA, align 4
  %16 = load %struct.picolcd_data*, %struct.picolcd_data** %6, align 8
  %17 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.hid_report* @picolcd_out_report(i32 %15, i32 %18)
  store %struct.hid_report* %19, %struct.hid_report** %10, align 8
  %20 = load %struct.hid_report*, %struct.hid_report** %10, align 8
  %21 = icmp ne %struct.hid_report* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load %struct.hid_report*, %struct.hid_report** %10, align 8
  %24 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %27, label %30

27:                                               ; preds = %22, %4
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %226

30:                                               ; preds = %22
  %31 = load i32, i32* @REPORT_LCD_DATA, align 4
  %32 = load %struct.picolcd_data*, %struct.picolcd_data** %6, align 8
  %33 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.hid_report* @picolcd_out_report(i32 %31, i32 %34)
  store %struct.hid_report* %35, %struct.hid_report** %11, align 8
  %36 = load %struct.hid_report*, %struct.hid_report** %11, align 8
  %37 = icmp ne %struct.hid_report* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load %struct.hid_report*, %struct.hid_report** %11, align 8
  %40 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 1
  br i1 %42, label %43, label %46

43:                                               ; preds = %38, %30
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %226

46:                                               ; preds = %38
  %47 = load %struct.picolcd_data*, %struct.picolcd_data** %6, align 8
  %48 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %47, i32 0, i32 1
  %49 = load i64, i64* %12, align 8
  %50 = call i32 @spin_lock_irqsave(i32* %48, i64 %49)
  %51 = load %struct.picolcd_data*, %struct.picolcd_data** %6, align 8
  %52 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @PICOLCD_FAILED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %46
  %58 = load %struct.picolcd_data*, %struct.picolcd_data** %6, align 8
  %59 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %58, i32 0, i32 1
  %60 = load i64, i64* %12, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  %62 = load i32, i32* @ENODEV, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %226

64:                                               ; preds = %46
  %65 = load %struct.hid_report*, %struct.hid_report** %10, align 8
  %66 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %8, align 4
  %71 = shl i32 %70, 2
  %72 = call i32 @hid_set_field(i32 %69, i32 0, i32 %71)
  %73 = load %struct.hid_report*, %struct.hid_report** %10, align 8
  %74 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @hid_set_field(i32 %77, i32 1, i32 2)
  %79 = load %struct.hid_report*, %struct.hid_report** %10, align 8
  %80 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @hid_set_field(i32 %83, i32 2, i32 0)
  %85 = load %struct.hid_report*, %struct.hid_report** %10, align 8
  %86 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @hid_set_field(i32 %89, i32 3, i32 0)
  %91 = load %struct.hid_report*, %struct.hid_report** %10, align 8
  %92 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %9, align 4
  %97 = or i32 184, %96
  %98 = call i32 @hid_set_field(i32 %95, i32 4, i32 %97)
  %99 = load %struct.hid_report*, %struct.hid_report** %10, align 8
  %100 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @hid_set_field(i32 %103, i32 5, i32 0)
  %105 = load %struct.hid_report*, %struct.hid_report** %10, align 8
  %106 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @hid_set_field(i32 %109, i32 6, i32 0)
  %111 = load %struct.hid_report*, %struct.hid_report** %10, align 8
  %112 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @hid_set_field(i32 %115, i32 7, i32 64)
  %117 = load %struct.hid_report*, %struct.hid_report** %10, align 8
  %118 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @hid_set_field(i32 %121, i32 8, i32 0)
  %123 = load %struct.hid_report*, %struct.hid_report** %10, align 8
  %124 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @hid_set_field(i32 %127, i32 9, i32 0)
  %129 = load %struct.hid_report*, %struct.hid_report** %10, align 8
  %130 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @hid_set_field(i32 %133, i32 10, i32 32)
  %135 = load %struct.hid_report*, %struct.hid_report** %11, align 8
  %136 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %8, align 4
  %141 = shl i32 %140, 2
  %142 = or i32 %141, 1
  %143 = call i32 @hid_set_field(i32 %139, i32 0, i32 %142)
  %144 = load %struct.hid_report*, %struct.hid_report** %11, align 8
  %145 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @hid_set_field(i32 %148, i32 1, i32 0)
  %150 = load %struct.hid_report*, %struct.hid_report** %11, align 8
  %151 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @hid_set_field(i32 %154, i32 2, i32 0)
  %156 = load %struct.hid_report*, %struct.hid_report** %11, align 8
  %157 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @hid_set_field(i32 %160, i32 3, i32 32)
  %162 = load i32*, i32** %7, align 8
  %163 = load i32, i32* %9, align 4
  %164 = mul nsw i32 %163, 4
  %165 = load i32, i32* %8, align 4
  %166 = add nsw i32 %164, %165
  %167 = mul nsw i32 %166, 64
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %162, i64 %168
  store i32* %169, i32** %13, align 8
  store i32 0, i32* %14, align 4
  br label %170

170:                                              ; preds = %206, %64
  %171 = load i32, i32* %14, align 4
  %172 = icmp slt i32 %171, 64
  br i1 %172, label %173, label %209

173:                                              ; preds = %170
  %174 = load i32, i32* %14, align 4
  %175 = icmp slt i32 %174, 32
  br i1 %175, label %176, label %190

176:                                              ; preds = %173
  %177 = load %struct.hid_report*, %struct.hid_report** %10, align 8
  %178 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %14, align 4
  %183 = add nsw i32 11, %182
  %184 = load i32*, i32** %13, align 8
  %185 = load i32, i32* %14, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @hid_set_field(i32 %181, i32 %183, i32 %188)
  br label %205

190:                                              ; preds = %173
  %191 = load %struct.hid_report*, %struct.hid_report** %11, align 8
  %192 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %191, i32 0, i32 1
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %14, align 4
  %197 = add nsw i32 4, %196
  %198 = sub nsw i32 %197, 32
  %199 = load i32*, i32** %13, align 8
  %200 = load i32, i32* %14, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @hid_set_field(i32 %195, i32 %198, i32 %203)
  br label %205

205:                                              ; preds = %190, %176
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %14, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %14, align 4
  br label %170

209:                                              ; preds = %170
  %210 = load %struct.picolcd_data*, %struct.picolcd_data** %6, align 8
  %211 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.hid_report*, %struct.hid_report** %10, align 8
  %214 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %215 = call i32 @hid_hw_request(i32 %212, %struct.hid_report* %213, i32 %214)
  %216 = load %struct.picolcd_data*, %struct.picolcd_data** %6, align 8
  %217 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.hid_report*, %struct.hid_report** %11, align 8
  %220 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %221 = call i32 @hid_hw_request(i32 %218, %struct.hid_report* %219, i32 %220)
  %222 = load %struct.picolcd_data*, %struct.picolcd_data** %6, align 8
  %223 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %222, i32 0, i32 1
  %224 = load i64, i64* %12, align 8
  %225 = call i32 @spin_unlock_irqrestore(i32* %223, i64 %224)
  store i32 0, i32* %5, align 4
  br label %226

226:                                              ; preds = %209, %57, %43, %27
  %227 = load i32, i32* %5, align 4
  ret i32 %227
}

declare dso_local %struct.hid_report* @picolcd_out_report(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @hid_set_field(i32, i32, i32) #1

declare dso_local i32 @hid_hw_request(i32, %struct.hid_report*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
