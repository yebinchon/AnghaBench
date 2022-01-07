; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_HI_Command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_HI_Command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drxd_state = type { i32 }

@HI_RA_RAM_SRV_CMD__A = common dso_local global i32 0, align 4
@DRXD_MAX_RETRIES = common dso_local global i64 0, align 8
@HI_RA_RAM_SRV_RES__A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drxd_state*, i32, i32*)* @HI_Command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HI_Command(%struct.drxd_state* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drxd_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.drxd_state* %0, %struct.drxd_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 0, i64* %8, align 8
  %10 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %11 = load i32, i32* @HI_RA_RAM_SRV_CMD__A, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @Write16(%struct.drxd_state* %10, i32 %11, i32 %12, i32 0)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %4, align 4
  br label %43

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %30, %18
  %20 = load i64, i64* %8, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @DRXD_MAX_RETRIES, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 -1, i32* %9, align 4
  br label %33

26:                                               ; preds = %19
  %27 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %28 = load i32, i32* @HI_RA_RAM_SRV_CMD__A, align 4
  %29 = call i32 @Read16(%struct.drxd_state* %27, i32 %28, i32* null, i32 0)
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %19, label %33

33:                                               ; preds = %30, %25
  %34 = load i32, i32* %9, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %38 = load i32, i32* @HI_RA_RAM_SRV_RES__A, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @Read16(%struct.drxd_state* %37, i32 %38, i32* %39, i32 0)
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %36, %33
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %16
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @Write16(%struct.drxd_state*, i32, i32, i32) #1

declare dso_local i32 @Read16(%struct.drxd_state*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
