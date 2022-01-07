; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_kcryptd_crypt_write_convert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_kcryptd_crypt_write_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_crypt_io = type { i32, %struct.TYPE_6__, i64, %struct.TYPE_7__*, %struct.crypt_config* }
%struct.TYPE_6__ = type { i32, i32, %struct.bio* }
%struct.bio = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.crypt_config = type { i32 }

@BLK_STS_IOERR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_crypt_io*)* @kcryptd_crypt_write_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kcryptd_crypt_write_convert(%struct.dm_crypt_io* %0) #0 {
  %2 = alloca %struct.dm_crypt_io*, align 8
  %3 = alloca %struct.crypt_config*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.dm_crypt_io* %0, %struct.dm_crypt_io** %2, align 8
  %8 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %9 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %8, i32 0, i32 4
  %10 = load %struct.crypt_config*, %struct.crypt_config** %9, align 8
  store %struct.crypt_config* %10, %struct.crypt_config** %3, align 8
  %11 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %12 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %15 = call i32 @crypt_inc_pending(%struct.dm_crypt_io* %14)
  %16 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %17 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %18 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %17, i32 0, i32 1
  %19 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %20 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %19, i32 0, i32 3
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @crypt_convert_init(%struct.crypt_config* %16, %struct.TYPE_6__* %18, i32* null, %struct.TYPE_7__* %21, i32 %22)
  %24 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %25 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %26 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %25, i32 0, i32 3
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.bio* @crypt_alloc_buffer(%struct.dm_crypt_io* %24, i32 %30)
  store %struct.bio* %31, %struct.bio** %4, align 8
  %32 = load %struct.bio*, %struct.bio** %4, align 8
  %33 = icmp ne %struct.bio* %32, null
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %1
  %39 = load i64, i64* @BLK_STS_IOERR, align 8
  %40 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %41 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %40, i32 0, i32 2
  store i64 %39, i64* %41, align 8
  br label %85

42:                                               ; preds = %1
  %43 = load %struct.bio*, %struct.bio** %4, align 8
  %44 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %45 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  store %struct.bio* %43, %struct.bio** %46, align 8
  %47 = load %struct.bio*, %struct.bio** %4, align 8
  %48 = getelementptr inbounds %struct.bio, %struct.bio* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %51 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  %53 = load %struct.bio*, %struct.bio** %4, align 8
  %54 = call i64 @bio_sectors(%struct.bio* %53)
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %6, align 4
  %59 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %60 = call i32 @crypt_inc_pending(%struct.dm_crypt_io* %59)
  %61 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %62 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %63 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %62, i32 0, i32 1
  %64 = call i64 @crypt_convert(%struct.crypt_config* %61, %struct.TYPE_6__* %63)
  store i64 %64, i64* %7, align 8
  %65 = load i64, i64* %7, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %42
  %68 = load i64, i64* %7, align 8
  %69 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %70 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %69, i32 0, i32 2
  store i64 %68, i64* %70, align 8
  br label %71

71:                                               ; preds = %67, %42
  %72 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %73 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = call i32 @atomic_dec_and_test(i32* %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %80 = call i32 @kcryptd_crypt_write_io_submit(%struct.dm_crypt_io* %79, i32 0)
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %83 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  br label %84

84:                                               ; preds = %78, %71
  br label %85

85:                                               ; preds = %84, %38
  %86 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %87 = call i32 @crypt_dec_pending(%struct.dm_crypt_io* %86)
  ret void
}

declare dso_local i32 @crypt_inc_pending(%struct.dm_crypt_io*) #1

declare dso_local i32 @crypt_convert_init(%struct.crypt_config*, %struct.TYPE_6__*, i32*, %struct.TYPE_7__*, i32) #1

declare dso_local %struct.bio* @crypt_alloc_buffer(%struct.dm_crypt_io*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @bio_sectors(%struct.bio*) #1

declare dso_local i64 @crypt_convert(%struct.crypt_config*, %struct.TYPE_6__*) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @kcryptd_crypt_write_io_submit(%struct.dm_crypt_io*, i32) #1

declare dso_local i32 @crypt_dec_pending(%struct.dm_crypt_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
