; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_cmd.c_mthca_MAP_EQ.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_cmd.c_mthca_MAP_EQ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"%s mask %016llx for eqn %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Clearing\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Setting\00", align 1
@CMD_MAP_EQ = common dso_local global i32 0, align 4
@CMD_TIME_CLASS_B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_MAP_EQ(%struct.mthca_dev* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mthca_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %14 = load i64, i64* %6, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @mthca_dbg(%struct.mthca_dev* %9, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %13, i64 %14, i32 %15)
  %17 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = shl i32 %19, 31
  %21 = load i32, i32* %8, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @CMD_MAP_EQ, align 4
  %24 = load i32, i32* @CMD_TIME_CLASS_B, align 4
  %25 = call i32 @mthca_cmd(%struct.mthca_dev* %17, i64 %18, i32 %22, i32 0, i32 %23, i32 %24)
  ret i32 %25
}

declare dso_local i32 @mthca_dbg(%struct.mthca_dev*, i8*, i8*, i64, i32) #1

declare dso_local i32 @mthca_cmd(%struct.mthca_dev*, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
