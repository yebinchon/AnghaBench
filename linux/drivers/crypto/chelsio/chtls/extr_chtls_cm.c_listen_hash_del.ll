; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_listen_hash_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_listen_hash_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chtls_dev = type { i32, %struct.listen_info** }
%struct.listen_info = type { i32, %struct.listen_info*, %struct.sock* }
%struct.sock = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.chtls_dev*, %struct.sock*)* @listen_hash_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @listen_hash_del(%struct.chtls_dev* %0, %struct.sock* %1) #0 {
  %3 = alloca %struct.chtls_dev*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.listen_info*, align 8
  %6 = alloca %struct.listen_info**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.chtls_dev* %0, %struct.chtls_dev** %3, align 8
  store %struct.sock* %1, %struct.sock** %4, align 8
  store i32 -1, i32* %7, align 4
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = call i32 @listen_hashfn(%struct.sock* %9)
  store i32 %10, i32* %8, align 4
  %11 = load %struct.chtls_dev*, %struct.chtls_dev** %3, align 8
  %12 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %11, i32 0, i32 1
  %13 = load %struct.listen_info**, %struct.listen_info*** %12, align 8
  %14 = load i32, i32* %8, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.listen_info*, %struct.listen_info** %13, i64 %15
  store %struct.listen_info** %16, %struct.listen_info*** %6, align 8
  %17 = load %struct.chtls_dev*, %struct.chtls_dev** %3, align 8
  %18 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %17, i32 0, i32 0
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.listen_info**, %struct.listen_info*** %6, align 8
  %21 = load %struct.listen_info*, %struct.listen_info** %20, align 8
  store %struct.listen_info* %21, %struct.listen_info** %5, align 8
  br label %22

22:                                               ; preds = %42, %2
  %23 = load %struct.listen_info*, %struct.listen_info** %5, align 8
  %24 = icmp ne %struct.listen_info* %23, null
  br i1 %24, label %25, label %48

25:                                               ; preds = %22
  %26 = load %struct.listen_info*, %struct.listen_info** %5, align 8
  %27 = getelementptr inbounds %struct.listen_info, %struct.listen_info* %26, i32 0, i32 2
  %28 = load %struct.sock*, %struct.sock** %27, align 8
  %29 = load %struct.sock*, %struct.sock** %4, align 8
  %30 = icmp eq %struct.sock* %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load %struct.listen_info*, %struct.listen_info** %5, align 8
  %33 = getelementptr inbounds %struct.listen_info, %struct.listen_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %7, align 4
  %35 = load %struct.listen_info*, %struct.listen_info** %5, align 8
  %36 = getelementptr inbounds %struct.listen_info, %struct.listen_info* %35, i32 0, i32 1
  %37 = load %struct.listen_info*, %struct.listen_info** %36, align 8
  %38 = load %struct.listen_info**, %struct.listen_info*** %6, align 8
  store %struct.listen_info* %37, %struct.listen_info** %38, align 8
  %39 = load %struct.listen_info*, %struct.listen_info** %5, align 8
  %40 = call i32 @kfree(%struct.listen_info* %39)
  br label %48

41:                                               ; preds = %25
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.listen_info*, %struct.listen_info** %5, align 8
  %44 = getelementptr inbounds %struct.listen_info, %struct.listen_info* %43, i32 0, i32 1
  store %struct.listen_info** %44, %struct.listen_info*** %6, align 8
  %45 = load %struct.listen_info*, %struct.listen_info** %5, align 8
  %46 = getelementptr inbounds %struct.listen_info, %struct.listen_info* %45, i32 0, i32 1
  %47 = load %struct.listen_info*, %struct.listen_info** %46, align 8
  store %struct.listen_info* %47, %struct.listen_info** %5, align 8
  br label %22

48:                                               ; preds = %31, %22
  %49 = load %struct.chtls_dev*, %struct.chtls_dev** %3, align 8
  %50 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock(i32* %50)
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local i32 @listen_hashfn(%struct.sock*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @kfree(%struct.listen_info*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
