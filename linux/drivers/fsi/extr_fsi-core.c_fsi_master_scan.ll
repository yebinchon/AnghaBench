; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-core.c_fsi_master_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-core.c_fsi_master_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_master = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"enable link %d failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"break to link %d failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_master*)* @fsi_master_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_master_scan(%struct.fsi_master* %0) #0 {
  %2 = alloca %struct.fsi_master*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.fsi_master* %0, %struct.fsi_master** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %39, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.fsi_master*, %struct.fsi_master** %2, align 8
  %8 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %42

11:                                               ; preds = %5
  %12 = load %struct.fsi_master*, %struct.fsi_master** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @fsi_master_link_enable(%struct.fsi_master* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  %18 = load %struct.fsi_master*, %struct.fsi_master** %2, align 8
  %19 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %18, i32 0, i32 1
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @dev_dbg(i32* %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  br label %39

23:                                               ; preds = %11
  %24 = load %struct.fsi_master*, %struct.fsi_master** %2, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @fsi_master_break(%struct.fsi_master* %24, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.fsi_master*, %struct.fsi_master** %2, align 8
  %31 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %30, i32 0, i32 1
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @dev_dbg(i32* %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %33)
  br label %39

35:                                               ; preds = %23
  %36 = load %struct.fsi_master*, %struct.fsi_master** %2, align 8
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @fsi_slave_init(%struct.fsi_master* %36, i32 %37, i32 0)
  br label %39

39:                                               ; preds = %35, %29, %17
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %5

42:                                               ; preds = %5
  ret i32 0
}

declare dso_local i32 @fsi_master_link_enable(%struct.fsi_master*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @fsi_master_break(%struct.fsi_master*, i32) #1

declare dso_local i32 @fsi_slave_init(%struct.fsi_master*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
