; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cache.c_ib_cache_gid_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cache.c_ib_cache_gid_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%union.ib_gid = type { i32 }
%struct.ib_gid_attr = type { i32 }

@GID_ATTR_FIND_MASK_GID = common dso_local global i64 0, align 8
@GID_ATTR_FIND_MASK_GID_TYPE = common dso_local global i64 0, align 8
@GID_ATTR_FIND_MASK_DEFAULT = common dso_local global i64 0, align 8
@GID_ATTR_FIND_MASK_NETDEV = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_cache_gid_del(%struct.ib_device* %0, i32 %1, %union.ib_gid* %2, %struct.ib_gid_attr* %3) #0 {
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.ib_gid*, align 8
  %8 = alloca %struct.ib_gid_attr*, align 8
  %9 = alloca i64, align 8
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.ib_gid* %2, %union.ib_gid** %7, align 8
  store %struct.ib_gid_attr* %3, %struct.ib_gid_attr** %8, align 8
  %10 = load i64, i64* @GID_ATTR_FIND_MASK_GID, align 8
  %11 = load i64, i64* @GID_ATTR_FIND_MASK_GID_TYPE, align 8
  %12 = or i64 %10, %11
  %13 = load i64, i64* @GID_ATTR_FIND_MASK_DEFAULT, align 8
  %14 = or i64 %12, %13
  %15 = load i64, i64* @GID_ATTR_FIND_MASK_NETDEV, align 8
  %16 = or i64 %14, %15
  store i64 %16, i64* %9, align 8
  %17 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %union.ib_gid*, %union.ib_gid** %7, align 8
  %20 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @_ib_cache_gid_del(%struct.ib_device* %17, i32 %18, %union.ib_gid* %19, %struct.ib_gid_attr* %20, i64 %21, i32 0)
  ret i32 %22
}

declare dso_local i32 @_ib_cache_gid_del(%struct.ib_device*, i32, %union.ib_gid*, %struct.ib_gid_attr*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
