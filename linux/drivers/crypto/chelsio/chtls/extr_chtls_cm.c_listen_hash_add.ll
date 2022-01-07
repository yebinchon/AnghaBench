; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_listen_hash_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_listen_hash_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.listen_info = type { i32, %struct.listen_info*, %struct.sock* }
%struct.chtls_dev = type { i32, %struct.listen_info** }
%struct.sock = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.listen_info* (%struct.chtls_dev*, %struct.sock*, i32)* @listen_hash_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.listen_info* @listen_hash_add(%struct.chtls_dev* %0, %struct.sock* %1, i32 %2) #0 {
  %4 = alloca %struct.chtls_dev*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.listen_info*, align 8
  %8 = alloca i32, align 4
  store %struct.chtls_dev* %0, %struct.chtls_dev** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.listen_info* @kmalloc(i32 24, i32 %9)
  store %struct.listen_info* %10, %struct.listen_info** %7, align 8
  %11 = load %struct.listen_info*, %struct.listen_info** %7, align 8
  %12 = icmp ne %struct.listen_info* %11, null
  br i1 %12, label %13, label %44

13:                                               ; preds = %3
  %14 = load %struct.sock*, %struct.sock** %5, align 8
  %15 = call i32 @listen_hashfn(%struct.sock* %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.sock*, %struct.sock** %5, align 8
  %17 = load %struct.listen_info*, %struct.listen_info** %7, align 8
  %18 = getelementptr inbounds %struct.listen_info, %struct.listen_info* %17, i32 0, i32 2
  store %struct.sock* %16, %struct.sock** %18, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.listen_info*, %struct.listen_info** %7, align 8
  %21 = getelementptr inbounds %struct.listen_info, %struct.listen_info* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.chtls_dev*, %struct.chtls_dev** %4, align 8
  %23 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %22, i32 0, i32 0
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.chtls_dev*, %struct.chtls_dev** %4, align 8
  %26 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %25, i32 0, i32 1
  %27 = load %struct.listen_info**, %struct.listen_info*** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.listen_info*, %struct.listen_info** %27, i64 %29
  %31 = load %struct.listen_info*, %struct.listen_info** %30, align 8
  %32 = load %struct.listen_info*, %struct.listen_info** %7, align 8
  %33 = getelementptr inbounds %struct.listen_info, %struct.listen_info* %32, i32 0, i32 1
  store %struct.listen_info* %31, %struct.listen_info** %33, align 8
  %34 = load %struct.listen_info*, %struct.listen_info** %7, align 8
  %35 = load %struct.chtls_dev*, %struct.chtls_dev** %4, align 8
  %36 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %35, i32 0, i32 1
  %37 = load %struct.listen_info**, %struct.listen_info*** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.listen_info*, %struct.listen_info** %37, i64 %39
  store %struct.listen_info* %34, %struct.listen_info** %40, align 8
  %41 = load %struct.chtls_dev*, %struct.chtls_dev** %4, align 8
  %42 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %41, i32 0, i32 0
  %43 = call i32 @spin_unlock(i32* %42)
  br label %44

44:                                               ; preds = %13, %3
  %45 = load %struct.listen_info*, %struct.listen_info** %7, align 8
  ret %struct.listen_info* %45
}

declare dso_local %struct.listen_info* @kmalloc(i32, i32) #1

declare dso_local i32 @listen_hashfn(%struct.sock*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
