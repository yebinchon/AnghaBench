; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-target.c_verity_alloc_zero_digest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-target.c_verity_alloc_zero_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_verity = type { i32, i8*, i32, i32 }
%struct.ahash_request = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_verity*)* @verity_alloc_zero_digest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verity_alloc_zero_digest(%struct.dm_verity* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_verity*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ahash_request*, align 8
  %6 = alloca %struct.ahash_request*, align 8
  store %struct.dm_verity* %0, %struct.dm_verity** %3, align 8
  %7 = load i32, i32* @ENOMEM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %4, align 4
  %9 = load %struct.dm_verity*, %struct.dm_verity** %3, align 8
  %10 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @kmalloc(i32 %11, i32 %12)
  %14 = load %struct.dm_verity*, %struct.dm_verity** %3, align 8
  %15 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %14, i32 0, i32 1
  store i8* %13, i8** %15, align 8
  %16 = load %struct.dm_verity*, %struct.dm_verity** %3, align 8
  %17 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %61

22:                                               ; preds = %1
  %23 = load %struct.dm_verity*, %struct.dm_verity** %3, align 8
  %24 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @kmalloc(i32 %25, i32 %26)
  %28 = bitcast i8* %27 to %struct.ahash_request*
  store %struct.ahash_request* %28, %struct.ahash_request** %5, align 8
  %29 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %30 = icmp ne %struct.ahash_request* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %61

33:                                               ; preds = %22
  %34 = load %struct.dm_verity*, %struct.dm_verity** %3, align 8
  %35 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = shl i32 1, %36
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.ahash_request* @kzalloc(i32 %37, i32 %38)
  store %struct.ahash_request* %39, %struct.ahash_request** %6, align 8
  %40 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %41 = icmp ne %struct.ahash_request* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %33
  br label %55

43:                                               ; preds = %33
  %44 = load %struct.dm_verity*, %struct.dm_verity** %3, align 8
  %45 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %46 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %47 = load %struct.dm_verity*, %struct.dm_verity** %3, align 8
  %48 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = shl i32 1, %49
  %51 = load %struct.dm_verity*, %struct.dm_verity** %3, align 8
  %52 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @verity_hash(%struct.dm_verity* %44, %struct.ahash_request* %45, %struct.ahash_request* %46, i32 %50, i8* %53)
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %43, %42
  %56 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %57 = call i32 @kfree(%struct.ahash_request* %56)
  %58 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %59 = call i32 @kfree(%struct.ahash_request* %58)
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %55, %31, %20
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local %struct.ahash_request* @kzalloc(i32, i32) #1

declare dso_local i32 @verity_hash(%struct.dm_verity*, %struct.ahash_request*, %struct.ahash_request*, i32, i8*) #1

declare dso_local i32 @kfree(%struct.ahash_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
