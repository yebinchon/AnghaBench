; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_handler_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_handler_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@WIIPROTO_REQ_RMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiimote_data*, i32*)* @handler_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handler_data(%struct.wiimote_data* %0, i32* %1) #0 {
  %3 = alloca %struct.wiimote_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wiimote_data* %0, %struct.wiimote_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 3
  %10 = load i32, i32* %9, align 4
  %11 = shl i32 %10, 8
  %12 = load i32*, i32** %4, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 4
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %11, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 2
  %18 = load i32, i32* %17, align 4
  %19 = ashr i32 %18, 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %6, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 15
  store i32 %24, i32* %7, align 4
  %25 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @handler_keys(%struct.wiimote_data* %25, i32* %26)
  %28 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %29 = load i32, i32* @WIIPROTO_REQ_RMEM, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @wiimote_cmd_pending(%struct.wiimote_data* %28, i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %72

33:                                               ; preds = %2
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %50

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %40 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp sgt i32 %38, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %46 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %44, %37
  br label %50

50:                                               ; preds = %49, %36
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %53 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %56 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %50
  %61 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %62 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i32*, i32** %4, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 5
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @memcpy(i64 %64, i32* %66, i32 %67)
  br label %69

69:                                               ; preds = %60, %50
  %70 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %71 = call i32 @wiimote_cmd_complete(%struct.wiimote_data* %70)
  br label %72

72:                                               ; preds = %69, %2
  ret void
}

declare dso_local i32 @handler_keys(%struct.wiimote_data*, i32*) #1

declare dso_local i64 @wiimote_cmd_pending(%struct.wiimote_data*, i32, i32) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @wiimote_cmd_complete(%struct.wiimote_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
