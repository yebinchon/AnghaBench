; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_wiiproto_req_wmem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_wiiproto_req_wmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_data = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Invalid length %d wmem request\0A\00", align 1
@WIIPROTO_REQ_WMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiimote_data*, i32, i32, i32*, i32)* @wiiproto_req_wmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wiiproto_req_wmem(%struct.wiimote_data* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.wiimote_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [22 x i32], align 16
  store %struct.wiimote_data* %0, %struct.wiimote_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %10, align 4
  %13 = icmp sgt i32 %12, 16
  br i1 %13, label %17, label %14

14:                                               ; preds = %5
  %15 = load i32, i32* %10, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %14, %5
  %18 = load %struct.wiimote_data*, %struct.wiimote_data** %6, align 8
  %19 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @hid_warn(i32 %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %58

23:                                               ; preds = %14
  %24 = getelementptr inbounds [22 x i32], [22 x i32]* %11, i64 0, i64 0
  %25 = call i32 @memset(i32* %24, i32 0, i32 88)
  %26 = load i32, i32* @WIIPROTO_REQ_WMEM, align 4
  %27 = getelementptr inbounds [22 x i32], [22 x i32]* %11, i64 0, i64 0
  store i32 %26, i32* %27, align 16
  %28 = load i32, i32* %8, align 4
  %29 = ashr i32 %28, 16
  %30 = and i32 %29, 255
  %31 = getelementptr inbounds [22 x i32], [22 x i32]* %11, i64 0, i64 2
  store i32 %30, i32* %31, align 8
  %32 = load i32, i32* %8, align 4
  %33 = ashr i32 %32, 8
  %34 = and i32 %33, 255
  %35 = getelementptr inbounds [22 x i32], [22 x i32]* %11, i64 0, i64 3
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %8, align 4
  %37 = and i32 %36, 255
  %38 = getelementptr inbounds [22 x i32], [22 x i32]* %11, i64 0, i64 4
  store i32 %37, i32* %38, align 16
  %39 = load i32, i32* %10, align 4
  %40 = getelementptr inbounds [22 x i32], [22 x i32]* %11, i64 0, i64 5
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds [22 x i32], [22 x i32]* %11, i64 0, i64 6
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @memcpy(i32* %41, i32* %42, i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %23
  %48 = getelementptr inbounds [22 x i32], [22 x i32]* %11, i64 0, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, 4
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %47, %23
  %52 = load %struct.wiimote_data*, %struct.wiimote_data** %6, align 8
  %53 = getelementptr inbounds [22 x i32], [22 x i32]* %11, i64 0, i64 1
  %54 = call i32 @wiiproto_keep_rumble(%struct.wiimote_data* %52, i32* %53)
  %55 = load %struct.wiimote_data*, %struct.wiimote_data** %6, align 8
  %56 = getelementptr inbounds [22 x i32], [22 x i32]* %11, i64 0, i64 0
  %57 = call i32 @wiimote_queue(%struct.wiimote_data* %55, i32* %56, i32 88)
  br label %58

58:                                               ; preds = %51, %17
  ret void
}

declare dso_local i32 @hid_warn(i32, i8*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @wiiproto_keep_rumble(%struct.wiimote_data*, i32*) #1

declare dso_local i32 @wiimote_queue(%struct.wiimote_data*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
