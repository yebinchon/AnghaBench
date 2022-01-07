; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_hfi1_caps_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_hfi1_caps_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_param = type { i64 }

@HFI1_CAP_WRITABLE_MASK = common dso_local global i64 0, align 8
@HFI1_CAP_USER_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"Invalid module parameter value for 'cap_mask'\0A\00", align 1
@HFI1_CAP_LOCKED_SMASK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Ignoring non-writable capability bits %#lx\0A\00", align 1
@HFI1_CAP_RESERVED_MASK = common dso_local global i64 0, align 8
@HFI1_CAP_MUST_HAVE_KERN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.kernel_param*)* @hfi1_caps_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfi1_caps_set(i8* %0, %struct.kernel_param* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.kernel_param*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.kernel_param* %1, %struct.kernel_param** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.kernel_param*, %struct.kernel_param** %4, align 8
  %12 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i64*
  store i64* %14, i64** %6, align 8
  %15 = load i64*, i64** %6, align 8
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* @HFI1_CAP_WRITABLE_MASK, align 8
  %18 = load i64, i64* @HFI1_CAP_USER_SHIFT, align 8
  %19 = shl i64 %17, %18
  %20 = load i64, i64* @HFI1_CAP_WRITABLE_MASK, align 8
  %21 = or i64 %19, %20
  store i64 %21, i64* %10, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @kstrtoul(i8* %22, i32 0, i64* %8)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %83

28:                                               ; preds = %2
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @HFI1_CAP_LOCKED_SMASK, align 8
  %32 = xor i64 %31, -1
  %33 = and i64 %30, %32
  %34 = xor i64 %29, %33
  store i64 %34, i64* %9, align 8
  %35 = call i64 (...) @HFI1_CAP_LOCKED()
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %28
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = xor i64 %39, -1
  %41 = and i64 %38, %40
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %10, align 8
  %46 = xor i64 %45, -1
  %47 = and i64 %44, %46
  %48 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %47)
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* %9, align 8
  %51 = and i64 %50, %49
  store i64 %51, i64* %9, align 8
  br label %52

52:                                               ; preds = %43, %37, %28
  %53 = load i64, i64* @HFI1_CAP_RESERVED_MASK, align 8
  %54 = xor i64 %53, -1
  %55 = load i64, i64* %9, align 8
  %56 = and i64 %55, %54
  store i64 %56, i64* %9, align 8
  %57 = load i64, i64* %9, align 8
  %58 = xor i64 %57, -1
  %59 = load i64, i64* %7, align 8
  %60 = and i64 %59, %58
  store i64 %60, i64* %7, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* %9, align 8
  %63 = and i64 %61, %62
  %64 = load i64, i64* %7, align 8
  %65 = or i64 %64, %63
  store i64 %65, i64* %7, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* @HFI1_CAP_MUST_HAVE_KERN, align 8
  %68 = load i64, i64* @HFI1_CAP_USER_SHIFT, align 8
  %69 = shl i64 %67, %68
  %70 = and i64 %66, %69
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* @HFI1_CAP_MUST_HAVE_KERN, align 8
  %73 = and i64 %71, %72
  %74 = load i64, i64* @HFI1_CAP_USER_SHIFT, align 8
  %75 = shl i64 %73, %74
  %76 = xor i64 %70, %75
  store i64 %76, i64* %9, align 8
  %77 = load i64, i64* %9, align 8
  %78 = xor i64 %77, -1
  %79 = load i64, i64* %7, align 8
  %80 = and i64 %79, %78
  store i64 %80, i64* %7, align 8
  %81 = load i64, i64* %7, align 8
  %82 = load i64*, i64** %6, align 8
  store i64 %81, i64* %82, align 8
  br label %83

83:                                               ; preds = %52, %26
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i64 @HFI1_CAP_LOCKED(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
