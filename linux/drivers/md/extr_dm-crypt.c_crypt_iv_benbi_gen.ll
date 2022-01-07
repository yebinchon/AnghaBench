; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_iv_benbi_gen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_iv_benbi_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypt_config = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.dm_crypt_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypt_config*, i32*, %struct.dm_crypt_request*)* @crypt_iv_benbi_gen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypt_iv_benbi_gen(%struct.crypt_config* %0, i32* %1, %struct.dm_crypt_request* %2) #0 {
  %4 = alloca %struct.crypt_config*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dm_crypt_request*, align 8
  %7 = alloca i32, align 4
  store %struct.crypt_config* %0, %struct.crypt_config** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.dm_crypt_request* %2, %struct.dm_crypt_request** %6, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load %struct.crypt_config*, %struct.crypt_config** %4, align 8
  %10 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = sub i64 %12, 4
  %14 = trunc i64 %13 to i32
  %15 = call i32 @memset(i32* %8, i32 0, i32 %14)
  %16 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %6, align 8
  %17 = getelementptr inbounds %struct.dm_crypt_request, %struct.dm_crypt_request* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.crypt_config*, %struct.crypt_config** %4, align 8
  %20 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %18, %23
  %25 = add nsw i32 %24, 1
  %26 = call i32 @cpu_to_be64(i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = load %struct.crypt_config*, %struct.crypt_config** %4, align 8
  %30 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  %34 = getelementptr inbounds i32, i32* %33, i64 -4
  %35 = call i32 @put_unaligned(i32 %27, i32* %34)
  ret i32 0
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @put_unaligned(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
