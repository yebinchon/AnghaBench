; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_e752x_edac.c_e752x_check_ns_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_e752x_edac.c_e752x_check_ns_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e752x_error_info = type { i32, i32 }

@NSI_ERR_MASK = common dso_local global i32 0, align 4
@NSI_FATAL_MASK = common dso_local global i32 0, align 4
@NSI_NON_FATAL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e752x_error_info*, i32*, i32)* @e752x_check_ns_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e752x_check_ns_interface(%struct.e752x_error_info* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.e752x_error_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.e752x_error_info* %0, %struct.e752x_error_info** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %9 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @NSI_ERR_MASK, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %40

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @NSI_FATAL_MASK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @NSI_FATAL_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @nsi_error(i32 1, i32 %23, i32* %24, i32 %25)
  br label %27

27:                                               ; preds = %20, %15
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @NSI_NON_FATAL_MASK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @NSI_NON_FATAL_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @nsi_error(i32 0, i32 %35, i32* %36, i32 %37)
  br label %39

39:                                               ; preds = %32, %27
  br label %40

40:                                               ; preds = %39, %3
  %41 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %42 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @NSI_ERR_MASK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %73

48:                                               ; preds = %40
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @NSI_FATAL_MASK, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @NSI_FATAL_MASK, align 4
  %56 = and i32 %54, %55
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @nsi_error(i32 1, i32 %56, i32* %57, i32 %58)
  br label %60

60:                                               ; preds = %53, %48
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @NSI_NON_FATAL_MASK, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @NSI_NON_FATAL_MASK, align 4
  %68 = and i32 %66, %67
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @nsi_error(i32 0, i32 %68, i32* %69, i32 %70)
  br label %72

72:                                               ; preds = %65, %60
  br label %73

73:                                               ; preds = %72, %40
  ret void
}

declare dso_local i32 @nsi_error(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
