; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_dec_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_dec_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_crypt_io = type { i32, %struct.crypt_config*, i32, %struct.TYPE_4__, i32, i32, %struct.bio* }
%struct.crypt_config = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.bio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_crypt_io*)* @crypt_dec_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypt_dec_pending(%struct.dm_crypt_io* %0) #0 {
  %2 = alloca %struct.dm_crypt_io*, align 8
  %3 = alloca %struct.crypt_config*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i32, align 4
  store %struct.dm_crypt_io* %0, %struct.dm_crypt_io** %2, align 8
  %6 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %7 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %6, i32 0, i32 1
  %8 = load %struct.crypt_config*, %struct.crypt_config** %7, align 8
  store %struct.crypt_config* %8, %struct.crypt_config** %3, align 8
  %9 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %10 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %9, i32 0, i32 6
  %11 = load %struct.bio*, %struct.bio** %10, align 8
  store %struct.bio* %11, %struct.bio** %4, align 8
  %12 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %13 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %16 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %15, i32 0, i32 4
  %17 = call i32 @atomic_dec_and_test(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %62

20:                                               ; preds = %1
  %21 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %22 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %20
  %28 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %29 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %30 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.bio*, %struct.bio** %4, align 8
  %35 = call i32 @crypt_free_req(%struct.crypt_config* %28, i32 %33, %struct.bio* %34)
  br label %36

36:                                               ; preds = %27, %20
  %37 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %38 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %44 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %47 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %46, i32 0, i32 1
  %48 = load %struct.crypt_config*, %struct.crypt_config** %47, align 8
  %49 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %48, i32 0, i32 0
  %50 = call i32 @mempool_free(i32 %45, i32* %49)
  br label %56

51:                                               ; preds = %36
  %52 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %53 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @kfree(i32 %54)
  br label %56

56:                                               ; preds = %51, %42
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.bio*, %struct.bio** %4, align 8
  %59 = getelementptr inbounds %struct.bio, %struct.bio* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.bio*, %struct.bio** %4, align 8
  %61 = call i32 @bio_endio(%struct.bio* %60)
  br label %62

62:                                               ; preds = %56, %19
  ret void
}

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @crypt_free_req(%struct.crypt_config*, i32, %struct.bio*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mempool_free(i32, i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @bio_endio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
