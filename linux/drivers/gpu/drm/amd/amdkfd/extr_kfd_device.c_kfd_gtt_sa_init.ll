; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device.c_kfd_gtt_sa_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device.c_kfd_gtt_sa_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_dev = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@BITS_PER_LONG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"gtt_sa_num_of_chunks = %d, gtt_sa_bitmap = %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kfd_dev*, i32, i32)* @kfd_gtt_sa_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kfd_gtt_sa_init(%struct.kfd_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kfd_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kfd_dev* %0, %struct.kfd_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ult i32 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i64 @WARN_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %76

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %76

27:                                               ; preds = %18
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i64 @WARN_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %76

36:                                               ; preds = %27
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %39 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = udiv i32 %40, %41
  %43 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %44 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %46 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @BITS_PER_LONG, align 4
  %49 = add i32 %47, %48
  %50 = sub i32 %49, 1
  %51 = load i32, i32* @BITS_PER_LONG, align 4
  %52 = udiv i32 %50, %51
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i32 @kcalloc(i32 %53, i32 8, i32 %54)
  %56 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %57 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %59 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %36
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %76

65:                                               ; preds = %36
  %66 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %67 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %70 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %71)
  %73 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %74 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %73, i32 0, i32 2
  %75 = call i32 @mutex_init(i32* %74)
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %65, %62, %33, %24, %15
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
