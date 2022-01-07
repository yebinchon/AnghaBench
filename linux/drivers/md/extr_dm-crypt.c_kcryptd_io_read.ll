; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_kcryptd_io_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_kcryptd_io_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_crypt_io = type { i64, i32, %struct.crypt_config* }
%struct.crypt_config = type { i64, i32 }
%struct.bio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_crypt_io*, i32)* @kcryptd_io_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kcryptd_io_read(%struct.dm_crypt_io* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_crypt_io*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypt_config*, align 8
  %7 = alloca %struct.bio*, align 8
  store %struct.dm_crypt_io* %0, %struct.dm_crypt_io** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %4, align 8
  %9 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %8, i32 0, i32 2
  %10 = load %struct.crypt_config*, %struct.crypt_config** %9, align 8
  store %struct.crypt_config* %10, %struct.crypt_config** %6, align 8
  %11 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %4, align 8
  %12 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %16 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %15, i32 0, i32 1
  %17 = call %struct.bio* @bio_clone_fast(i32 %13, i32 %14, i32* %16)
  store %struct.bio* %17, %struct.bio** %7, align 8
  %18 = load %struct.bio*, %struct.bio** %7, align 8
  %19 = icmp ne %struct.bio* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %49

21:                                               ; preds = %2
  %22 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %4, align 8
  %23 = call i32 @crypt_inc_pending(%struct.dm_crypt_io* %22)
  %24 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %4, align 8
  %25 = load %struct.bio*, %struct.bio** %7, align 8
  %26 = call i32 @clone_init(%struct.dm_crypt_io* %24, %struct.bio* %25)
  %27 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %28 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %4, align 8
  %31 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = load %struct.bio*, %struct.bio** %7, align 8
  %35 = getelementptr inbounds %struct.bio, %struct.bio* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i64 %33, i64* %36, align 8
  %37 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %4, align 8
  %38 = load %struct.bio*, %struct.bio** %7, align 8
  %39 = call i64 @dm_crypt_integrity_io_alloc(%struct.dm_crypt_io* %37, %struct.bio* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %21
  %42 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %4, align 8
  %43 = call i32 @crypt_dec_pending(%struct.dm_crypt_io* %42)
  %44 = load %struct.bio*, %struct.bio** %7, align 8
  %45 = call i32 @bio_put(%struct.bio* %44)
  store i32 1, i32* %3, align 4
  br label %49

46:                                               ; preds = %21
  %47 = load %struct.bio*, %struct.bio** %7, align 8
  %48 = call i32 @generic_make_request(%struct.bio* %47)
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %46, %41, %20
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.bio* @bio_clone_fast(i32, i32, i32*) #1

declare dso_local i32 @crypt_inc_pending(%struct.dm_crypt_io*) #1

declare dso_local i32 @clone_init(%struct.dm_crypt_io*, %struct.bio*) #1

declare dso_local i64 @dm_crypt_integrity_io_alloc(%struct.dm_crypt_io*, %struct.bio*) #1

declare dso_local i32 @crypt_dec_pending(%struct.dm_crypt_io*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
