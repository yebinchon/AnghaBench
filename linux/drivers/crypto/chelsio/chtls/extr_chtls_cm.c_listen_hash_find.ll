; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_listen_hash_find.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_listen_hash_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chtls_dev = type { i32, %struct.listen_info** }
%struct.listen_info = type { i32, %struct.sock*, %struct.listen_info* }
%struct.sock = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.chtls_dev*, %struct.sock*)* @listen_hash_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @listen_hash_find(%struct.chtls_dev* %0, %struct.sock* %1) #0 {
  %3 = alloca %struct.chtls_dev*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.listen_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.chtls_dev* %0, %struct.chtls_dev** %3, align 8
  store %struct.sock* %1, %struct.sock** %4, align 8
  store i32 -1, i32* %6, align 4
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = call i32 @listen_hashfn(%struct.sock* %8)
  store i32 %9, i32* %7, align 4
  %10 = load %struct.chtls_dev*, %struct.chtls_dev** %3, align 8
  %11 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.chtls_dev*, %struct.chtls_dev** %3, align 8
  %14 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %13, i32 0, i32 1
  %15 = load %struct.listen_info**, %struct.listen_info*** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.listen_info*, %struct.listen_info** %15, i64 %17
  %19 = load %struct.listen_info*, %struct.listen_info** %18, align 8
  store %struct.listen_info* %19, %struct.listen_info** %5, align 8
  br label %20

20:                                               ; preds = %34, %2
  %21 = load %struct.listen_info*, %struct.listen_info** %5, align 8
  %22 = icmp ne %struct.listen_info* %21, null
  br i1 %22, label %23, label %38

23:                                               ; preds = %20
  %24 = load %struct.listen_info*, %struct.listen_info** %5, align 8
  %25 = getelementptr inbounds %struct.listen_info, %struct.listen_info* %24, i32 0, i32 1
  %26 = load %struct.sock*, %struct.sock** %25, align 8
  %27 = load %struct.sock*, %struct.sock** %4, align 8
  %28 = icmp eq %struct.sock* %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.listen_info*, %struct.listen_info** %5, align 8
  %31 = getelementptr inbounds %struct.listen_info, %struct.listen_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %6, align 4
  br label %38

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.listen_info*, %struct.listen_info** %5, align 8
  %36 = getelementptr inbounds %struct.listen_info, %struct.listen_info* %35, i32 0, i32 2
  %37 = load %struct.listen_info*, %struct.listen_info** %36, align 8
  store %struct.listen_info* %37, %struct.listen_info** %5, align 8
  br label %20

38:                                               ; preds = %29, %20
  %39 = load %struct.chtls_dev*, %struct.chtls_dev** %3, align 8
  %40 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %39, i32 0, i32 0
  %41 = call i32 @spin_unlock(i32* %40)
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @listen_hashfn(%struct.sock*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
