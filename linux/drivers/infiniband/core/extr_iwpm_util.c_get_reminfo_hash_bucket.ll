; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_iwpm_util.c_get_reminfo_hash_bucket.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_iwpm_util.c_get_reminfo_hash_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlist_head = type { i32 }
%struct.sockaddr_storage = type { i32 }

@iwpm_reminfo_bucket = common dso_local global %struct.hlist_head* null, align 8
@IWPM_REMINFO_HASH_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hlist_head* (%struct.sockaddr_storage*, %struct.sockaddr_storage*)* @get_reminfo_hash_bucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hlist_head* @get_reminfo_hash_bucket(%struct.sockaddr_storage* %0, %struct.sockaddr_storage* %1) #0 {
  %3 = alloca %struct.hlist_head*, align 8
  %4 = alloca %struct.sockaddr_storage*, align 8
  %5 = alloca %struct.sockaddr_storage*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.sockaddr_storage* %0, %struct.sockaddr_storage** %4, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %5, align 8
  %8 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %9 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %10 = call i32 @get_hash_bucket(%struct.sockaddr_storage* %8, %struct.sockaddr_storage* %9, i64* %6)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.hlist_head* null, %struct.hlist_head** %3, align 8
  br label %20

14:                                               ; preds = %2
  %15 = load %struct.hlist_head*, %struct.hlist_head** @iwpm_reminfo_bucket, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @IWPM_REMINFO_HASH_MASK, align 8
  %18 = and i64 %16, %17
  %19 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %15, i64 %18
  store %struct.hlist_head* %19, %struct.hlist_head** %3, align 8
  br label %20

20:                                               ; preds = %14, %13
  %21 = load %struct.hlist_head*, %struct.hlist_head** %3, align 8
  ret %struct.hlist_head* %21
}

declare dso_local i32 @get_hash_bucket(%struct.sockaddr_storage*, %struct.sockaddr_storage*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
