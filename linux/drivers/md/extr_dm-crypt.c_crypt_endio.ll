; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_endio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_endio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, %struct.dm_crypt_io* }
%struct.dm_crypt_io = type { i64, %struct.crypt_config* }
%struct.crypt_config = type { i32 }

@WRITE = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @crypt_endio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypt_endio(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.dm_crypt_io*, align 8
  %4 = alloca %struct.crypt_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %7 = load %struct.bio*, %struct.bio** %2, align 8
  %8 = getelementptr inbounds %struct.bio, %struct.bio* %7, i32 0, i32 1
  %9 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %8, align 8
  store %struct.dm_crypt_io* %9, %struct.dm_crypt_io** %3, align 8
  %10 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %3, align 8
  %11 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %10, i32 0, i32 1
  %12 = load %struct.crypt_config*, %struct.crypt_config** %11, align 8
  store %struct.crypt_config* %12, %struct.crypt_config** %4, align 8
  %13 = load %struct.bio*, %struct.bio** %2, align 8
  %14 = call i32 @bio_data_dir(%struct.bio* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @WRITE, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.crypt_config*, %struct.crypt_config** %4, align 8
  %20 = load %struct.bio*, %struct.bio** %2, align 8
  %21 = call i32 @crypt_free_buffer_pages(%struct.crypt_config* %19, %struct.bio* %20)
  br label %22

22:                                               ; preds = %18, %1
  %23 = load %struct.bio*, %struct.bio** %2, align 8
  %24 = getelementptr inbounds %struct.bio, %struct.bio* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %6, align 8
  %26 = load %struct.bio*, %struct.bio** %2, align 8
  %27 = call i32 @bio_put(%struct.bio* %26)
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @READ, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = load i64, i64* %6, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %3, align 8
  %36 = call i32 @kcryptd_queue_crypt(%struct.dm_crypt_io* %35)
  br label %48

37:                                               ; preds = %31, %22
  %38 = load i64, i64* %6, align 8
  %39 = call i64 @unlikely(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %3, align 8
  %44 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %41, %37
  %46 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %3, align 8
  %47 = call i32 @crypt_dec_pending(%struct.dm_crypt_io* %46)
  br label %48

48:                                               ; preds = %45, %34
  ret void
}

declare dso_local i32 @bio_data_dir(%struct.bio*) #1

declare dso_local i32 @crypt_free_buffer_pages(%struct.crypt_config*, %struct.bio*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @kcryptd_queue_crypt(%struct.dm_crypt_io*) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @crypt_dec_pending(%struct.dm_crypt_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
