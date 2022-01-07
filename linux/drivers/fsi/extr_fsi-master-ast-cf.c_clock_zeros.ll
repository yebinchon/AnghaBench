; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-ast-cf.c_clock_zeros.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-ast-cf.c_clock_zeros.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_master_acf = type { i32 }

@CMD_IDLE_CLOCKS = common dso_local global i32 0, align 4
@CMD_REG_CLEN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_master_acf*, i32)* @clock_zeros to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clock_zeros(%struct.fsi_master_acf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsi_master_acf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fsi_master_acf* %0, %struct.fsi_master_acf** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %8

8:                                                ; preds = %25, %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @min(i32 %12, i32 255)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %4, align 8
  %15 = load i32, i32* @CMD_IDLE_CLOCKS, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @CMD_REG_CLEN_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = or i32 %15, %18
  %20 = call i32 @do_copro_command(%struct.fsi_master_acf* %14, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %11
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %30

25:                                               ; preds = %11
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sub nsw i32 %27, %26
  store i32 %28, i32* %5, align 4
  br label %8

29:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %23
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @do_copro_command(%struct.fsi_master_acf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
