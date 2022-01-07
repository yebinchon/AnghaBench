; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_set_defaults_ss4_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_set_defaults_ss4_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32 }
%struct.alps_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, %struct.alps_data*)* @alps_set_defaults_ss4_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alps_set_defaults_ss4_v2(%struct.psmouse* %0, %struct.alps_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca %struct.alps_data*, align 8
  %6 = alloca [2 x [4 x i8]], align 1
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store %struct.alps_data* %1, %struct.alps_data** %5, align 8
  %7 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* %6, i64 0, i64 0
  %8 = bitcast [4 x i8]* %7 to i8**
  %9 = call i32 @memset(i8** %8, i32 0, i32 8)
  %10 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %11 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* %6, i64 0, i64 1
  %12 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %13 = call i64 @alps_get_otp_values_ss4_v2(%struct.psmouse* %10, i32 1, i8* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %17 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* %6, i64 0, i64 0
  %18 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 0
  %19 = call i64 @alps_get_otp_values_ss4_v2(%struct.psmouse* %16, i32 0, i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %2
  store i32 -1, i32* %3, align 4
  br label %36

22:                                               ; preds = %15
  %23 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* %6, i64 0, i64 0
  %24 = bitcast [4 x i8]* %23 to i8**
  %25 = load %struct.alps_data*, %struct.alps_data** %5, align 8
  %26 = call i32 @alps_update_device_area_ss4_v2(i8** %24, %struct.alps_data* %25)
  %27 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* %6, i64 0, i64 0
  %28 = bitcast [4 x i8]* %27 to i8**
  %29 = load %struct.alps_data*, %struct.alps_data** %5, align 8
  %30 = call i32 @alps_update_btn_info_ss4_v2(i8** %28, %struct.alps_data* %29)
  %31 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* %6, i64 0, i64 0
  %32 = bitcast [4 x i8]* %31 to i8**
  %33 = load %struct.alps_data*, %struct.alps_data** %5, align 8
  %34 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %35 = call i32 @alps_update_dual_info_ss4_v2(i8** %32, %struct.alps_data* %33, %struct.psmouse* %34)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %22, %21
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @memset(i8**, i32, i32) #1

declare dso_local i64 @alps_get_otp_values_ss4_v2(%struct.psmouse*, i32, i8*) #1

declare dso_local i32 @alps_update_device_area_ss4_v2(i8**, %struct.alps_data*) #1

declare dso_local i32 @alps_update_btn_info_ss4_v2(i8**, %struct.alps_data*) #1

declare dso_local i32 @alps_update_dual_info_ss4_v2(i8**, %struct.alps_data*, %struct.psmouse*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
