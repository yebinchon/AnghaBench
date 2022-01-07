; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_clone_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_clone_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_crypt_io = type { %struct.TYPE_4__*, %struct.crypt_config* }
%struct.TYPE_4__ = type { i32 }
%struct.crypt_config = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.bio = type { i32, i32, %struct.dm_crypt_io* }

@crypt_endio = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_crypt_io*, %struct.bio*)* @clone_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clone_init(%struct.dm_crypt_io* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.dm_crypt_io*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.crypt_config*, align 8
  store %struct.dm_crypt_io* %0, %struct.dm_crypt_io** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %6 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %3, align 8
  %7 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %6, i32 0, i32 1
  %8 = load %struct.crypt_config*, %struct.crypt_config** %7, align 8
  store %struct.crypt_config* %8, %struct.crypt_config** %5, align 8
  %9 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %3, align 8
  %10 = load %struct.bio*, %struct.bio** %4, align 8
  %11 = getelementptr inbounds %struct.bio, %struct.bio* %10, i32 0, i32 2
  store %struct.dm_crypt_io* %9, %struct.dm_crypt_io** %11, align 8
  %12 = load i32, i32* @crypt_endio, align 4
  %13 = load %struct.bio*, %struct.bio** %4, align 8
  %14 = getelementptr inbounds %struct.bio, %struct.bio* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.bio*, %struct.bio** %4, align 8
  %16 = load %struct.crypt_config*, %struct.crypt_config** %5, align 8
  %17 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @bio_set_dev(%struct.bio* %15, i32 %20)
  %22 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %3, align 8
  %23 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.bio*, %struct.bio** %4, align 8
  %28 = getelementptr inbounds %struct.bio, %struct.bio* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  ret void
}

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
