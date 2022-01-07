; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-core.c_fsi_slave_report_and_clear_errors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-core.c_fsi_slave_report_and_clear_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_slave = type { i32, i32, i32, %struct.fsi_master* }
%struct.fsi_master = type { i32 }

@FSI_SLAVE_BASE = common dso_local global i64 0, align 8
@FSI_SISC = common dso_local global i64 0, align 8
@FSI_SSTAT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"status: 0x%08x, sisc: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_slave*)* @fsi_slave_report_and_clear_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_slave_report_and_clear_errors(%struct.fsi_slave* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsi_slave*, align 8
  %4 = alloca %struct.fsi_master*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fsi_slave* %0, %struct.fsi_slave** %3, align 8
  %10 = load %struct.fsi_slave*, %struct.fsi_slave** %3, align 8
  %11 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %10, i32 0, i32 3
  %12 = load %struct.fsi_master*, %struct.fsi_master** %11, align 8
  store %struct.fsi_master* %12, %struct.fsi_master** %4, align 8
  %13 = load %struct.fsi_slave*, %struct.fsi_slave** %3, align 8
  %14 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %8, align 4
  %16 = load %struct.fsi_slave*, %struct.fsi_slave** %3, align 8
  %17 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %9, align 4
  %19 = load %struct.fsi_master*, %struct.fsi_master** %4, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i64, i64* @FSI_SLAVE_BASE, align 8
  %23 = load i64, i64* @FSI_SISC, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @fsi_master_read(%struct.fsi_master* %19, i32 %20, i32 %21, i64 %24, i32* %5, i32 4)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %2, align 4
  br label %57

30:                                               ; preds = %1
  %31 = load %struct.fsi_master*, %struct.fsi_master** %4, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i64, i64* @FSI_SLAVE_BASE, align 8
  %35 = load i64, i64* @FSI_SSTAT, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @fsi_master_read(%struct.fsi_master* %31, i32 %32, i32 %33, i64 %36, i32* %6, i32 4)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %2, align 4
  br label %57

42:                                               ; preds = %30
  %43 = load %struct.fsi_slave*, %struct.fsi_slave** %3, align 8
  %44 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %43, i32 0, i32 1
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @be32_to_cpu(i32 %45)
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @be32_to_cpu(i32 %47)
  %49 = call i32 @dev_dbg(i32* %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %48)
  %50 = load %struct.fsi_master*, %struct.fsi_master** %4, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i64, i64* @FSI_SLAVE_BASE, align 8
  %54 = load i64, i64* @FSI_SISC, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @fsi_master_write(%struct.fsi_master* %50, i32 %51, i32 %52, i64 %55, i32* %5, i32 4)
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %42, %40, %28
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @fsi_master_read(%struct.fsi_master*, i32, i32, i64, i32*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @fsi_master_write(%struct.fsi_master*, i32, i32, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
