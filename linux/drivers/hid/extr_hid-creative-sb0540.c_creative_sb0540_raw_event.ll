; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-creative-sb0540.c_creative_sb0540_raw_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-creative-sb0540.c_creative_sb0540_raw_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_report = type { i32 }
%struct.creative_sb0540 = type { i32 }

@KEY_RESERVED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Could not get a key for main_code %llX\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_report*, i32*, i32)* @creative_sb0540_raw_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @creative_sb0540_raw_event(%struct.hid_device* %0, %struct.hid_report* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca %struct.hid_report*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.creative_sb0540*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %6, align 8
  store %struct.hid_report* %1, %struct.hid_report** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %15 = call %struct.creative_sb0540* @hid_get_drvdata(%struct.hid_device* %14)
  store %struct.creative_sb0540* %15, %struct.creative_sb0540** %10, align 8
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 6
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %65

19:                                               ; preds = %4
  %20 = load i32*, i32** %8, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 5
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @reverse(i32 %22, i32 8)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = shl i32 %24, 8
  %26 = load i32, i32* %11, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %27, 255
  %29 = add nsw i32 %25, %28
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = and i32 %30, 255
  %32 = shl i32 %31, 8
  %33 = load i32, i32* %12, align 4
  %34 = and i32 %33, 65280
  %35 = ashr i32 %34, 8
  %36 = add nsw i32 %32, %35
  store i32 %36, i32* %12, align 4
  %37 = load %struct.creative_sb0540*, %struct.creative_sb0540** %10, align 8
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @get_key(%struct.creative_sb0540* %37, i32 %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %19
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* @KEY_RESERVED, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42, %19
  %47 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @hid_err(%struct.hid_device* %47, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %48)
  store i32 0, i32* %5, align 4
  br label %65

50:                                               ; preds = %42
  %51 = load %struct.creative_sb0540*, %struct.creative_sb0540** %10, align 8
  %52 = getelementptr inbounds %struct.creative_sb0540, %struct.creative_sb0540* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @input_report_key(i32 %53, i32 %54, i32 1)
  %56 = load %struct.creative_sb0540*, %struct.creative_sb0540** %10, align 8
  %57 = getelementptr inbounds %struct.creative_sb0540, %struct.creative_sb0540* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @input_report_key(i32 %58, i32 %59, i32 0)
  %61 = load %struct.creative_sb0540*, %struct.creative_sb0540** %10, align 8
  %62 = getelementptr inbounds %struct.creative_sb0540, %struct.creative_sb0540* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @input_sync(i32 %63)
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %50, %46, %18
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local %struct.creative_sb0540* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @reverse(i32, i32) #1

declare dso_local i32 @get_key(%struct.creative_sb0540*, i32) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
