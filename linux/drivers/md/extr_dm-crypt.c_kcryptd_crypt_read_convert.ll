; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_kcryptd_crypt_read_convert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_kcryptd_crypt_read_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_crypt_io = type { %struct.TYPE_3__, i64, i32, i32, %struct.crypt_config* }
%struct.TYPE_3__ = type { i32 }
%struct.crypt_config = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_crypt_io*)* @kcryptd_crypt_read_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kcryptd_crypt_read_convert(%struct.dm_crypt_io* %0) #0 {
  %2 = alloca %struct.dm_crypt_io*, align 8
  %3 = alloca %struct.crypt_config*, align 8
  %4 = alloca i64, align 8
  store %struct.dm_crypt_io* %0, %struct.dm_crypt_io** %2, align 8
  %5 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %6 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %5, i32 0, i32 4
  %7 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  store %struct.crypt_config* %7, %struct.crypt_config** %3, align 8
  %8 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %9 = call i32 @crypt_inc_pending(%struct.dm_crypt_io* %8)
  %10 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %11 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %12 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %11, i32 0, i32 0
  %13 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %14 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %17 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %20 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @crypt_convert_init(%struct.crypt_config* %10, %struct.TYPE_3__* %12, i32 %15, i32 %18, i32 %21)
  %23 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %24 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %25 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %24, i32 0, i32 0
  %26 = call i64 @crypt_convert(%struct.crypt_config* %23, %struct.TYPE_3__* %25)
  store i64 %26, i64* %4, align 8
  %27 = load i64, i64* %4, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %1
  %30 = load i64, i64* %4, align 8
  %31 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %32 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  br label %33

33:                                               ; preds = %29, %1
  %34 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %35 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = call i64 @atomic_dec_and_test(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %41 = call i32 @kcryptd_crypt_read_done(%struct.dm_crypt_io* %40)
  br label %42

42:                                               ; preds = %39, %33
  %43 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %44 = call i32 @crypt_dec_pending(%struct.dm_crypt_io* %43)
  ret void
}

declare dso_local i32 @crypt_inc_pending(%struct.dm_crypt_io*) #1

declare dso_local i32 @crypt_convert_init(%struct.crypt_config*, %struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i64 @crypt_convert(%struct.crypt_config*, %struct.TYPE_3__*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @kcryptd_crypt_read_done(%struct.dm_crypt_io*) #1

declare dso_local i32 @crypt_dec_pending(%struct.dm_crypt_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
