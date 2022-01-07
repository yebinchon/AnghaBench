; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_altera-pr-ip-core.c_alt_pr_fpga_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_altera-pr-ip-core.c_alt_pr_fpga_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_manager = type { %struct.alt_pr_priv* }
%struct.alt_pr_priv = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@FPGA_MGR_STATE_WRITE_ERR = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpga_manager*, i8*, i64)* @alt_pr_fpga_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alt_pr_fpga_write(%struct.fpga_manager* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fpga_manager*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.alt_pr_priv*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.fpga_manager* %0, %struct.fpga_manager** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.fpga_manager*, %struct.fpga_manager** %5, align 8
  %12 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %11, i32 0, i32 0
  %13 = load %struct.alt_pr_priv*, %struct.alt_pr_priv** %12, align 8
  store %struct.alt_pr_priv* %13, %struct.alt_pr_priv** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %9, align 8
  store i64 0, i64* %10, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ule i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %85

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %25, %21
  %23 = load i64, i64* %7, align 8
  %24 = icmp uge i64 %23, 4
  br i1 %24, label %25, label %37

25:                                               ; preds = %22
  %26 = load i32*, i32** %9, align 8
  %27 = load i64, i64* %10, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %10, align 8
  %29 = getelementptr inbounds i32, i32* %26, i64 %27
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.alt_pr_priv*, %struct.alt_pr_priv** %8, align 8
  %32 = getelementptr inbounds %struct.alt_pr_priv, %struct.alt_pr_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @writel(i32 %30, i32 %33)
  %35 = load i64, i64* %7, align 8
  %36 = sub i64 %35, 4
  store i64 %36, i64* %7, align 8
  br label %22

37:                                               ; preds = %22
  %38 = load i64, i64* %7, align 8
  switch i64 %38, label %73 [
    i64 3, label %39
    i64 2, label %50
    i64 1, label %61
    i64 0, label %72
  ]

39:                                               ; preds = %37
  %40 = load i32*, i32** %9, align 8
  %41 = load i64, i64* %10, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %10, align 8
  %43 = getelementptr inbounds i32, i32* %40, i64 %41
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 16777215
  %46 = load %struct.alt_pr_priv*, %struct.alt_pr_priv** %8, align 8
  %47 = getelementptr inbounds %struct.alt_pr_priv, %struct.alt_pr_priv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @writel(i32 %45, i32 %48)
  br label %76

50:                                               ; preds = %37
  %51 = load i32*, i32** %9, align 8
  %52 = load i64, i64* %10, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %10, align 8
  %54 = getelementptr inbounds i32, i32* %51, i64 %52
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 65535
  %57 = load %struct.alt_pr_priv*, %struct.alt_pr_priv** %8, align 8
  %58 = getelementptr inbounds %struct.alt_pr_priv, %struct.alt_pr_priv* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @writel(i32 %56, i32 %59)
  br label %76

61:                                               ; preds = %37
  %62 = load i32*, i32** %9, align 8
  %63 = load i64, i64* %10, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %10, align 8
  %65 = getelementptr inbounds i32, i32* %62, i64 %63
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 255
  %68 = load %struct.alt_pr_priv*, %struct.alt_pr_priv** %8, align 8
  %69 = getelementptr inbounds %struct.alt_pr_priv, %struct.alt_pr_priv* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @writel(i32 %67, i32 %70)
  br label %76

72:                                               ; preds = %37
  br label %76

73:                                               ; preds = %37
  %74 = load i32, i32* @EFAULT, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %85

76:                                               ; preds = %72, %61, %50, %39
  %77 = load %struct.fpga_manager*, %struct.fpga_manager** %5, align 8
  %78 = call i64 @alt_pr_fpga_state(%struct.fpga_manager* %77)
  %79 = load i64, i64* @FPGA_MGR_STATE_WRITE_ERR, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i32, i32* @EIO, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %85

84:                                               ; preds = %76
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %81, %73, %18
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i64 @alt_pr_fpga_state(%struct.fpga_manager*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
