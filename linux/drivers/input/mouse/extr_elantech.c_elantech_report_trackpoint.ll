; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elantech.c_elantech_report_trackpoint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elantech.c_elantech_report_trackpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i8*, %struct.elantech_data* }
%struct.elantech_data = type { %struct.TYPE_2__, %struct.input_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.input_dev = type { i32 }

@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psmouse*, i32)* @elantech_report_trackpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elantech_report_trackpoint(%struct.psmouse* %0, i32 %1) #0 {
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.elantech_data*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %12 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %11, i32 0, i32 1
  %13 = load %struct.elantech_data*, %struct.elantech_data** %12, align 8
  store %struct.elantech_data* %13, %struct.elantech_data** %5, align 8
  %14 = load %struct.elantech_data*, %struct.elantech_data** %5, align 8
  %15 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %14, i32 0, i32 1
  %16 = load %struct.input_dev*, %struct.input_dev** %15, align 8
  store %struct.input_dev* %16, %struct.input_dev** %6, align 8
  %17 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %18 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = call i32 @get_unaligned_le32(i8* %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = and i32 %23, -8
  switch i32 %24, label %63 [
    i32 100663344, label %25
    i32 369131552, label %25
    i32 645922832, label %25
    i32 914391040, label %25
  ]

25:                                               ; preds = %2, %2, %2, %2
  %26 = load i8*, i8** %7, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 4
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8*, i8** %7, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = xor i32 %33, 128
  %35 = shl i32 %34, 1
  %36 = sub nsw i32 %29, %35
  store i32 %36, i32* %8, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 2
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = xor i32 %40, 128
  %42 = shl i32 %41, 1
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 5
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = sub nsw i32 %42, %46
  store i32 %47, i32* %9, align 4
  %48 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = call i32 @psmouse_report_standard_buttons(%struct.input_dev* %48, i8 zeroext %51)
  %53 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %54 = load i32, i32* @REL_X, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @input_report_rel(%struct.input_dev* %53, i32 %54, i32 %55)
  %57 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %58 = load i32, i32* @REL_Y, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @input_report_rel(%struct.input_dev* %57, i32 %58, i32 %59)
  %61 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %62 = call i32 @input_sync(%struct.input_dev* %61)
  br label %73

63:                                               ; preds = %2
  %64 = load %struct.elantech_data*, %struct.elantech_data** %5, align 8
  %65 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %71 = call i32 @elantech_packet_dump(%struct.psmouse* %70)
  br label %72

72:                                               ; preds = %69, %63
  br label %73

73:                                               ; preds = %72, %25
  ret void
}

declare dso_local i32 @get_unaligned_le32(i8*) #1

declare dso_local i32 @psmouse_report_standard_buttons(%struct.input_dev*, i8 zeroext) #1

declare dso_local i32 @input_report_rel(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @elantech_packet_dump(%struct.psmouse*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
