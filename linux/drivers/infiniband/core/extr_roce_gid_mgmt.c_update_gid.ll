; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_roce_gid_mgmt.c_update_gid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_roce_gid_mgmt.c_update_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%union.ib_gid = type { i32 }
%struct.ib_gid_attr = type { i32 }

@IB_GID_TYPE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ib_device*, i32, %union.ib_gid*, %struct.ib_gid_attr*)* @update_gid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_gid(i32 %0, %struct.ib_device* %1, i32 %2, %union.ib_gid* %3, %struct.ib_gid_attr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.ib_gid*, align 8
  %10 = alloca %struct.ib_gid_attr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store %struct.ib_device* %1, %struct.ib_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store %union.ib_gid* %3, %union.ib_gid** %9, align 8
  store %struct.ib_gid_attr* %4, %struct.ib_gid_attr** %10, align 8
  %13 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i64 @roce_gid_type_mask_support(%struct.ib_device* %13, i32 %14)
  store i64 %15, i64* %12, align 8
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %46, %5
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* @IB_GID_TYPE_SIZE, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %49

20:                                               ; preds = %16
  %21 = load i32, i32* %11, align 4
  %22 = zext i32 %21 to i64
  %23 = shl i64 1, %22
  %24 = load i64, i64* %12, align 8
  %25 = and i64 %23, %24
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %20
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %10, align 8
  %30 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %6, align 4
  switch i32 %31, label %44 [
    i32 129, label %32
    i32 128, label %38
  ]

32:                                               ; preds = %27
  %33 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load %union.ib_gid*, %union.ib_gid** %9, align 8
  %36 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %10, align 8
  %37 = call i32 @ib_cache_gid_add(%struct.ib_device* %33, i32 %34, %union.ib_gid* %35, %struct.ib_gid_attr* %36)
  br label %44

38:                                               ; preds = %27
  %39 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load %union.ib_gid*, %union.ib_gid** %9, align 8
  %42 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %10, align 8
  %43 = call i32 @ib_cache_gid_del(%struct.ib_device* %39, i32 %40, %union.ib_gid* %41, %struct.ib_gid_attr* %42)
  br label %44

44:                                               ; preds = %27, %38, %32
  br label %45

45:                                               ; preds = %44, %20
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  br label %16

49:                                               ; preds = %16
  ret void
}

declare dso_local i64 @roce_gid_type_mask_support(%struct.ib_device*, i32) #1

declare dso_local i32 @ib_cache_gid_add(%struct.ib_device*, i32, %union.ib_gid*, %struct.ib_gid_attr*) #1

declare dso_local i32 @ib_cache_gid_del(%struct.ib_device*, i32, %union.ib_gid*, %struct.ib_gid_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
