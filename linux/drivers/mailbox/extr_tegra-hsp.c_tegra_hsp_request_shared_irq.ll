; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_tegra-hsp.c_tegra_hsp_request_shared_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_tegra-hsp.c_tegra_hsp_request_shared_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_hsp = type { i32, i32*, i32, i32 }

@tegra_hsp_shared_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to request interrupt: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"interrupt requested: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to find available interrupt\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_hsp*)* @tegra_hsp_request_shared_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_hsp_request_shared_irq(%struct.tegra_hsp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_hsp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tegra_hsp* %0, %struct.tegra_hsp** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %59, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.tegra_hsp*, %struct.tegra_hsp** %3, align 8
  %10 = getelementptr inbounds %struct.tegra_hsp, %struct.tegra_hsp* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %13, label %62

13:                                               ; preds = %7
  %14 = load %struct.tegra_hsp*, %struct.tegra_hsp** %3, align 8
  %15 = getelementptr inbounds %struct.tegra_hsp, %struct.tegra_hsp* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ule i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  br label %59

24:                                               ; preds = %13
  %25 = load %struct.tegra_hsp*, %struct.tegra_hsp** %3, align 8
  %26 = getelementptr inbounds %struct.tegra_hsp, %struct.tegra_hsp* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @tegra_hsp_shared_irq, align 4
  %30 = load %struct.tegra_hsp*, %struct.tegra_hsp** %3, align 8
  %31 = getelementptr inbounds %struct.tegra_hsp, %struct.tegra_hsp* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_name(i32 %32)
  %34 = load %struct.tegra_hsp*, %struct.tegra_hsp** %3, align 8
  %35 = call i32 @devm_request_irq(i32 %27, i32 %28, i32 %29, i32 0, i32 %33, %struct.tegra_hsp* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %24
  %39 = load %struct.tegra_hsp*, %struct.tegra_hsp** %3, align 8
  %40 = getelementptr inbounds %struct.tegra_hsp, %struct.tegra_hsp* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 (i32, i8*, ...) @dev_err(i32 %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %59

44:                                               ; preds = %24
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.tegra_hsp*, %struct.tegra_hsp** %3, align 8
  %47 = getelementptr inbounds %struct.tegra_hsp, %struct.tegra_hsp* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.tegra_hsp*, %struct.tegra_hsp** %3, align 8
  %49 = load %struct.tegra_hsp*, %struct.tegra_hsp** %3, align 8
  %50 = getelementptr inbounds %struct.tegra_hsp, %struct.tegra_hsp* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @HSP_INT_IE(i32 %51)
  %53 = call i32 @tegra_hsp_writel(%struct.tegra_hsp* %48, i32 0, i32 %52)
  %54 = load %struct.tegra_hsp*, %struct.tegra_hsp** %3, align 8
  %55 = getelementptr inbounds %struct.tegra_hsp, %struct.tegra_hsp* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @dev_dbg(i32 %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  br label %62

59:                                               ; preds = %38, %23
  %60 = load i32, i32* %4, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %7

62:                                               ; preds = %44, %7
  %63 = load i32, i32* %4, align 4
  %64 = load %struct.tegra_hsp*, %struct.tegra_hsp** %3, align 8
  %65 = getelementptr inbounds %struct.tegra_hsp, %struct.tegra_hsp* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %63, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load %struct.tegra_hsp*, %struct.tegra_hsp** %3, align 8
  %70 = getelementptr inbounds %struct.tegra_hsp, %struct.tegra_hsp* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32, i8*, ...) @dev_err(i32 %71, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i32, i32* @ENOENT, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %76

75:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %75, %68
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @devm_request_irq(i32, i32, i32, i32, i32, %struct.tegra_hsp*) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @tegra_hsp_writel(%struct.tegra_hsp*, i32, i32) #1

declare dso_local i32 @HSP_INT_IE(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
