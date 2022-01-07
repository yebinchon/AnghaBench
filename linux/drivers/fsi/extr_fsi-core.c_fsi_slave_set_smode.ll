; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-core.c_fsi_slave_set_smode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-core.c_fsi_slave_set_smode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_slave = type { i32, i32, i32, i32, i32 }

@FSI_SLAVE_BASE = common dso_local global i64 0, align 8
@FSI_SMODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_slave*)* @fsi_slave_set_smode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_slave_set_smode(%struct.fsi_slave* %0) #0 {
  %2 = alloca %struct.fsi_slave*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.fsi_slave* %0, %struct.fsi_slave** %2, align 8
  %5 = load %struct.fsi_slave*, %struct.fsi_slave** %2, align 8
  %6 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.fsi_slave*, %struct.fsi_slave** %2, align 8
  %9 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.fsi_slave*, %struct.fsi_slave** %2, align 8
  %12 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @fsi_slave_smode(i32 %7, i32 %10, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @cpu_to_be32(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.fsi_slave*, %struct.fsi_slave** %2, align 8
  %18 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.fsi_slave*, %struct.fsi_slave** %2, align 8
  %21 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.fsi_slave*, %struct.fsi_slave** %2, align 8
  %24 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* @FSI_SLAVE_BASE, align 8
  %27 = load i64, i64* @FSI_SMODE, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @fsi_master_write(i32 %19, i32 %22, i32 %25, i64 %28, i32* %4, i32 4)
  ret i32 %29
}

declare dso_local i32 @fsi_slave_smode(i32, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @fsi_master_write(i32, i32, i32, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
