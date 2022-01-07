; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_cmd.c_mthca_setup_cmd_doorbells.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_cmd.c_mthca_setup_cmd_doorbells.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32* }

@PAGE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"Firmware doorbell region at 0x%016llx, length 0x%x crosses a page boundary\0A\00", align 1
@MTHCA_CMD_POST_DOORBELLS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Mapped doorbell page for posting FW commands\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mthca_dev*, i32)* @mthca_setup_cmd_doorbells to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mthca_setup_cmd_doorbells(%struct.mthca_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mthca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %22, %2
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 8
  br i1 %10, label %11, label %25

11:                                               ; preds = %8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %14 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @max(i32 %12, i32 %20)
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %11
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %7, align 4
  br label %8

25:                                               ; preds = %8
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @PAGE_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  %32 = load i32, i32* @PAGE_MASK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %28, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %25
  %36 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @mthca_warn(%struct.mthca_dev* %36, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i64 %38, i32 %39)
  br label %79

41:                                               ; preds = %25
  %42 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %43 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @pci_resource_start(i32 %44, i32 2)
  %46 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %47 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @pci_resource_len(i32 %48, i32 2)
  %50 = sub nsw i32 %49, 1
  %51 = load i32, i32* %4, align 4
  %52 = and i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %45, %53
  store i64 %54, i64* %5, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = add i64 %57, 4
  %59 = trunc i64 %58 to i32
  %60 = call i32 @ioremap(i64 %55, i32 %59)
  %61 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %62 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 4
  %64 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %65 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %41
  br label %79

70:                                               ; preds = %41
  %71 = load i32, i32* @MTHCA_CMD_POST_DOORBELLS, align 4
  %72 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %73 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %71
  store i32 %76, i32* %74, align 8
  %77 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %78 = call i32 @mthca_dbg(%struct.mthca_dev* %77, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %79

79:                                               ; preds = %70, %69, %35
  ret void
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @mthca_warn(%struct.mthca_dev*, i8*, i64, i32) #1

declare dso_local i64 @pci_resource_start(i32, i32) #1

declare dso_local i32 @pci_resource_len(i32, i32) #1

declare dso_local i32 @ioremap(i64, i32) #1

declare dso_local i32 @mthca_dbg(%struct.mthca_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
