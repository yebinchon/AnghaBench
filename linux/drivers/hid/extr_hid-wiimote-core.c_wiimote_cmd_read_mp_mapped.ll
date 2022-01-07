; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_wiimote_cmd_read_mp_mapped.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_wiimote_cmd_read_mp_mapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_data = type { i32 }

@WIIMOTE_MP_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"mapped motion plus ID: %6phC\0A\00", align 1
@WIIMOTE_MP_SINGLE = common dso_local global i32 0, align 4
@WIIMOTE_MP_PASSTHROUGH_NUNCHUK = common dso_local global i32 0, align 4
@WIIMOTE_MP_PASSTHROUGH_CLASSIC = common dso_local global i32 0, align 4
@WIIMOTE_MP_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiimote_data*)* @wiimote_cmd_read_mp_mapped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wiimote_cmd_read_mp_mapped(%struct.wiimote_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wiimote_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [6 x i32], align 16
  store %struct.wiimote_data* %0, %struct.wiimote_data** %3, align 8
  %6 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %7 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %8 = call i32 @wiimote_cmd_read(%struct.wiimote_data* %6, i32 10748154, i32* %7, i32 6)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 6
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @WIIMOTE_MP_NONE, align 4
  store i32 %12, i32* %2, align 4
  br label %78

13:                                               ; preds = %1
  %14 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %15 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %18 = call i32 @hid_dbg(i32 %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32* %17)
  %19 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %20 = load i32, i32* %19, align 16
  %21 = icmp eq i32 %20, 255
  br i1 %21, label %22, label %44

22:                                               ; preds = %13
  %23 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 255
  br i1 %25, label %26, label %44

26:                                               ; preds = %22
  %27 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 255
  br i1 %29, label %30, label %44

30:                                               ; preds = %26
  %31 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 3
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 255
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 4
  %36 = load i32, i32* %35, align 16
  %37 = icmp eq i32 %36, 255
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 5
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 255
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @WIIMOTE_MP_NONE, align 4
  store i32 %43, i32* %2, align 4
  br label %78

44:                                               ; preds = %38, %34, %30, %26, %22, %13
  %45 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 4
  %46 = load i32, i32* %45, align 16
  %47 = icmp eq i32 %46, 4
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 5
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 5
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @WIIMOTE_MP_SINGLE, align 4
  store i32 %53, i32* %2, align 4
  br label %78

54:                                               ; preds = %48, %44
  %55 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 4
  %56 = load i32, i32* %55, align 16
  %57 = icmp eq i32 %56, 5
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 5
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 5
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* @WIIMOTE_MP_PASSTHROUGH_NUNCHUK, align 4
  store i32 %63, i32* %2, align 4
  br label %78

64:                                               ; preds = %58, %54
  %65 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 4
  %66 = load i32, i32* %65, align 16
  %67 = icmp eq i32 %66, 7
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 5
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 5
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* @WIIMOTE_MP_PASSTHROUGH_CLASSIC, align 4
  store i32 %73, i32* %2, align 4
  br label %78

74:                                               ; preds = %68, %64
  br label %75

75:                                               ; preds = %74
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* @WIIMOTE_MP_UNKNOWN, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %76, %72, %62, %52, %42, %11
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @wiimote_cmd_read(%struct.wiimote_data*, i32, i32*, i32) #1

declare dso_local i32 @hid_dbg(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
