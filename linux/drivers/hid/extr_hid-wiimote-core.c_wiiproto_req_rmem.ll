; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_wiiproto_req_rmem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_wiiproto_req_rmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_data = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Invalid length %d rmem request\0A\00", align 1
@WIIPROTO_REQ_RMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wiiproto_req_rmem(%struct.wiimote_data* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.wiimote_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [7 x i32], align 16
  store %struct.wiimote_data* %0, %struct.wiimote_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = load %struct.wiimote_data*, %struct.wiimote_data** %5, align 8
  %14 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @hid_warn(i32 %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %53

18:                                               ; preds = %4
  %19 = load i32, i32* @WIIPROTO_REQ_RMEM, align 4
  %20 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 0
  store i32 %19, i32* %20, align 16
  %21 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 1
  store i32 0, i32* %21, align 4
  %22 = load i32, i32* %7, align 4
  %23 = ashr i32 %22, 16
  %24 = and i32 %23, 255
  %25 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 2
  store i32 %24, i32* %25, align 8
  %26 = load i32, i32* %7, align 4
  %27 = ashr i32 %26, 8
  %28 = and i32 %27, 255
  %29 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 3
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, 255
  %32 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 4
  store i32 %31, i32* %32, align 16
  %33 = load i32, i32* %8, align 4
  %34 = ashr i32 %33, 8
  %35 = and i32 %34, 255
  %36 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 5
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, 255
  %39 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 6
  store i32 %38, i32* %39, align 8
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %18
  %43 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, 4
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %42, %18
  %47 = load %struct.wiimote_data*, %struct.wiimote_data** %5, align 8
  %48 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 1
  %49 = call i32 @wiiproto_keep_rumble(%struct.wiimote_data* %47, i32* %48)
  %50 = load %struct.wiimote_data*, %struct.wiimote_data** %5, align 8
  %51 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 0
  %52 = call i32 @wiimote_queue(%struct.wiimote_data* %50, i32* %51, i32 28)
  br label %53

53:                                               ; preds = %46, %12
  ret void
}

declare dso_local i32 @hid_warn(i32, i8*, i32) #1

declare dso_local i32 @wiiproto_keep_rumble(%struct.wiimote_data*, i32*) #1

declare dso_local i32 @wiimote_queue(%struct.wiimote_data*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
