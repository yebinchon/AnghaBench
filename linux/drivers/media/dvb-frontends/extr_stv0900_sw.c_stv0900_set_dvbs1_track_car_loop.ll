; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0900_sw.c_stv0900_set_dvbs1_track_car_loop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0900_sw.c_stv0900_set_dvbs1_track_car_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv0900_internal = type { i32 }

@ACLC = common dso_local global i32 0, align 4
@BCLC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stv0900_internal*, i32, i32)* @stv0900_set_dvbs1_track_car_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stv0900_set_dvbs1_track_car_loop(%struct.stv0900_internal* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.stv0900_internal*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stv0900_internal* %0, %struct.stv0900_internal** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %8 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp sge i32 %9, 48
  br i1 %10, label %11, label %47

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp sge i32 %12, 15000000
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %16 = load i32, i32* @ACLC, align 4
  %17 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %15, i32 %16, i32 43)
  %18 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %19 = load i32, i32* @BCLC, align 4
  %20 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %18, i32 %19, i32 26)
  br label %46

21:                                               ; preds = %11
  %22 = load i32, i32* %6, align 4
  %23 = icmp sge i32 %22, 7000000
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = icmp sgt i32 15000000, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %29 = load i32, i32* @ACLC, align 4
  %30 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %28, i32 %29, i32 12)
  %31 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %32 = load i32, i32* @BCLC, align 4
  %33 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %31, i32 %32, i32 27)
  br label %45

34:                                               ; preds = %24, %21
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 7000000
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %39 = load i32, i32* @ACLC, align 4
  %40 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %38, i32 %39, i32 44)
  %41 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %42 = load i32, i32* @BCLC, align 4
  %43 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %41, i32 %42, i32 28)
  br label %44

44:                                               ; preds = %37, %34
  br label %45

45:                                               ; preds = %44, %27
  br label %46

46:                                               ; preds = %45, %14
  br label %54

47:                                               ; preds = %3
  %48 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %49 = load i32, i32* @ACLC, align 4
  %50 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %48, i32 %49, i32 26)
  %51 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %52 = load i32, i32* @BCLC, align 4
  %53 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %51, i32 %52, i32 9)
  br label %54

54:                                               ; preds = %47, %46
  ret void
}

declare dso_local i32 @stv0900_write_reg(%struct.stv0900_internal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
