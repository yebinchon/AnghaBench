; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_kcryptd_queue_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_kcryptd_queue_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_crypt_io = type { i32, %struct.crypt_config* }
%struct.crypt_config = type { i32 }

@kcryptd_crypt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_crypt_io*)* @kcryptd_queue_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kcryptd_queue_crypt(%struct.dm_crypt_io* %0) #0 {
  %2 = alloca %struct.dm_crypt_io*, align 8
  %3 = alloca %struct.crypt_config*, align 8
  store %struct.dm_crypt_io* %0, %struct.dm_crypt_io** %2, align 8
  %4 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %5 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %4, i32 0, i32 1
  %6 = load %struct.crypt_config*, %struct.crypt_config** %5, align 8
  store %struct.crypt_config* %6, %struct.crypt_config** %3, align 8
  %7 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %8 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %7, i32 0, i32 0
  %9 = load i32, i32* @kcryptd_crypt, align 4
  %10 = call i32 @INIT_WORK(i32* %8, i32 %9)
  %11 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %12 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %15 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %14, i32 0, i32 0
  %16 = call i32 @queue_work(i32 %13, i32* %15)
  ret void
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
