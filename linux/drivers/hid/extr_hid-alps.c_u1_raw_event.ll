; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-alps.c_u1_raw_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-alps.c_u1_raw_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alps_dev = type { i32, i32, i32 }

@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_MT_PRESSURE = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alps_dev*, i32*, i32)* @u1_raw_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u1_raw_event(%struct.alps_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.alps_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i32*, align 8
  store %struct.alps_dev* %0, %struct.alps_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %187

18:                                               ; preds = %3
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %186 [
    i32 129, label %22
    i32 130, label %23
    i32 131, label %24
    i32 128, label %126
  ]

22:                                               ; preds = %18
  br label %186

23:                                               ; preds = %18
  br label %186

24:                                               ; preds = %18
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %87, %24
  %26 = load i32, i32* %11, align 4
  %27 = load %struct.alps_dev*, %struct.alps_dev** %5, align 8
  %28 = getelementptr inbounds %struct.alps_dev, %struct.alps_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %90

31:                                               ; preds = %25
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %11, align 4
  %34 = mul nsw i32 %33, 5
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  store i32* %36, i32** %14, align 8
  %37 = load i32*, i32** %14, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 3
  %39 = call i8* @get_unaligned_le16(i32* %38)
  %40 = ptrtoint i8* %39 to i32
  store i32 %40, i32* %8, align 4
  %41 = load i32*, i32** %14, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 5
  %43 = call i8* @get_unaligned_le16(i32* %42)
  %44 = ptrtoint i8* %43 to i32
  store i32 %44, i32* %9, align 4
  %45 = load i32*, i32** %14, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 7
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 127
  store i32 %48, i32* %10, align 4
  %49 = load %struct.alps_dev*, %struct.alps_dev** %5, align 8
  %50 = getelementptr inbounds %struct.alps_dev, %struct.alps_dev* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @input_mt_slot(i32 %51, i32 %52)
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %80

56:                                               ; preds = %31
  %57 = load %struct.alps_dev*, %struct.alps_dev** %5, align 8
  %58 = getelementptr inbounds %struct.alps_dev, %struct.alps_dev* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @MT_TOOL_FINGER, align 4
  %61 = call i32 @input_mt_report_slot_state(i32 %59, i32 %60, i32 1)
  %62 = load %struct.alps_dev*, %struct.alps_dev** %5, align 8
  %63 = getelementptr inbounds %struct.alps_dev, %struct.alps_dev* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @input_report_abs(i32 %64, i32 %65, i32 %66)
  %68 = load %struct.alps_dev*, %struct.alps_dev** %5, align 8
  %69 = getelementptr inbounds %struct.alps_dev, %struct.alps_dev* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @input_report_abs(i32 %70, i32 %71, i32 %72)
  %74 = load %struct.alps_dev*, %struct.alps_dev** %5, align 8
  %75 = getelementptr inbounds %struct.alps_dev, %struct.alps_dev* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @ABS_MT_PRESSURE, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @input_report_abs(i32 %76, i32 %77, i32 %78)
  br label %86

80:                                               ; preds = %31
  %81 = load %struct.alps_dev*, %struct.alps_dev** %5, align 8
  %82 = getelementptr inbounds %struct.alps_dev, %struct.alps_dev* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @MT_TOOL_FINGER, align 4
  %85 = call i32 @input_mt_report_slot_state(i32 %83, i32 %84, i32 0)
  br label %86

86:                                               ; preds = %80, %56
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  br label %25

90:                                               ; preds = %25
  %91 = load %struct.alps_dev*, %struct.alps_dev** %5, align 8
  %92 = getelementptr inbounds %struct.alps_dev, %struct.alps_dev* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @input_mt_sync_frame(i32 %93)
  %95 = load %struct.alps_dev*, %struct.alps_dev** %5, align 8
  %96 = getelementptr inbounds %struct.alps_dev, %struct.alps_dev* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @BTN_LEFT, align 4
  %99 = load i32*, i32** %6, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 1
  %103 = call i32 @input_report_key(i32 %97, i32 %98, i32 %102)
  %104 = load %struct.alps_dev*, %struct.alps_dev** %5, align 8
  %105 = getelementptr inbounds %struct.alps_dev, %struct.alps_dev* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @BTN_RIGHT, align 4
  %108 = load i32*, i32** %6, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, 2
  %112 = call i32 @input_report_key(i32 %106, i32 %107, i32 %111)
  %113 = load %struct.alps_dev*, %struct.alps_dev** %5, align 8
  %114 = getelementptr inbounds %struct.alps_dev, %struct.alps_dev* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @BTN_MIDDLE, align 4
  %117 = load i32*, i32** %6, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, 4
  %121 = call i32 @input_report_key(i32 %115, i32 %116, i32 %120)
  %122 = load %struct.alps_dev*, %struct.alps_dev** %5, align 8
  %123 = getelementptr inbounds %struct.alps_dev, %struct.alps_dev* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @input_sync(i32 %124)
  store i32 1, i32* %4, align 4
  br label %187

126:                                              ; preds = %18
  %127 = load i32*, i32** %6, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 2
  %129 = call i8* @get_unaligned_le16(i32* %128)
  %130 = ptrtoint i8* %129 to i16
  store i16 %130, i16* %12, align 2
  %131 = load i32*, i32** %6, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 4
  %133 = call i8* @get_unaligned_le16(i32* %132)
  %134 = ptrtoint i8* %133 to i16
  store i16 %134, i16* %13, align 2
  %135 = load i16, i16* %12, align 2
  %136 = sext i16 %135 to i32
  %137 = sdiv i32 %136, 8
  %138 = trunc i32 %137 to i16
  store i16 %138, i16* %12, align 2
  %139 = load i16, i16* %13, align 2
  %140 = sext i16 %139 to i32
  %141 = sdiv i32 %140, 8
  %142 = trunc i32 %141 to i16
  store i16 %142, i16* %13, align 2
  %143 = load %struct.alps_dev*, %struct.alps_dev** %5, align 8
  %144 = getelementptr inbounds %struct.alps_dev, %struct.alps_dev* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @REL_X, align 4
  %147 = load i16, i16* %12, align 2
  %148 = call i32 @input_report_rel(i32 %145, i32 %146, i16 signext %147)
  %149 = load %struct.alps_dev*, %struct.alps_dev** %5, align 8
  %150 = getelementptr inbounds %struct.alps_dev, %struct.alps_dev* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @REL_Y, align 4
  %153 = load i16, i16* %13, align 2
  %154 = call i32 @input_report_rel(i32 %151, i32 %152, i16 signext %153)
  %155 = load %struct.alps_dev*, %struct.alps_dev** %5, align 8
  %156 = getelementptr inbounds %struct.alps_dev, %struct.alps_dev* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @BTN_LEFT, align 4
  %159 = load i32*, i32** %6, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 1
  %161 = load i32, i32* %160, align 4
  %162 = and i32 %161, 1
  %163 = call i32 @input_report_key(i32 %157, i32 %158, i32 %162)
  %164 = load %struct.alps_dev*, %struct.alps_dev** %5, align 8
  %165 = getelementptr inbounds %struct.alps_dev, %struct.alps_dev* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @BTN_RIGHT, align 4
  %168 = load i32*, i32** %6, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 1
  %170 = load i32, i32* %169, align 4
  %171 = and i32 %170, 2
  %172 = call i32 @input_report_key(i32 %166, i32 %167, i32 %171)
  %173 = load %struct.alps_dev*, %struct.alps_dev** %5, align 8
  %174 = getelementptr inbounds %struct.alps_dev, %struct.alps_dev* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @BTN_MIDDLE, align 4
  %177 = load i32*, i32** %6, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 1
  %179 = load i32, i32* %178, align 4
  %180 = and i32 %179, 4
  %181 = call i32 @input_report_key(i32 %175, i32 %176, i32 %180)
  %182 = load %struct.alps_dev*, %struct.alps_dev** %5, align 8
  %183 = getelementptr inbounds %struct.alps_dev, %struct.alps_dev* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @input_sync(i32 %184)
  store i32 1, i32* %4, align 4
  br label %187

186:                                              ; preds = %18, %23, %22
  store i32 0, i32* %4, align 4
  br label %187

187:                                              ; preds = %186, %126, %90, %17
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

declare dso_local i8* @get_unaligned_le16(i32*) #1

declare dso_local i32 @input_mt_slot(i32, i32) #1

declare dso_local i32 @input_mt_report_slot_state(i32, i32, i32) #1

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @input_mt_sync_frame(i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @input_report_rel(i32, i32, i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
