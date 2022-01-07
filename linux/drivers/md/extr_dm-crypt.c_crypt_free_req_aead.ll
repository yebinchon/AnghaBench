; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_free_req_aead.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_free_req_aead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypt_config = type { i32, i32 }
%struct.aead_request = type { i32 }
%struct.bio = type { i32 }
%struct.dm_crypt_io = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypt_config*, %struct.aead_request*, %struct.bio*)* @crypt_free_req_aead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypt_free_req_aead(%struct.crypt_config* %0, %struct.aead_request* %1, %struct.bio* %2) #0 {
  %4 = alloca %struct.crypt_config*, align 8
  %5 = alloca %struct.aead_request*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca %struct.dm_crypt_io*, align 8
  store %struct.crypt_config* %0, %struct.crypt_config** %4, align 8
  store %struct.aead_request* %1, %struct.aead_request** %5, align 8
  store %struct.bio* %2, %struct.bio** %6, align 8
  %8 = load %struct.bio*, %struct.bio** %6, align 8
  %9 = load %struct.crypt_config*, %struct.crypt_config** %4, align 8
  %10 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.dm_crypt_io* @dm_per_bio_data(%struct.bio* %8, i32 %11)
  store %struct.dm_crypt_io* %12, %struct.dm_crypt_io** %7, align 8
  %13 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %7, align 8
  %14 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %13, i64 1
  %15 = bitcast %struct.dm_crypt_io* %14 to %struct.aead_request*
  %16 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %17 = icmp ne %struct.aead_request* %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %20 = load %struct.crypt_config*, %struct.crypt_config** %4, align 8
  %21 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %20, i32 0, i32 0
  %22 = call i32 @mempool_free(%struct.aead_request* %19, i32* %21)
  br label %23

23:                                               ; preds = %18, %3
  ret void
}

declare dso_local %struct.dm_crypt_io* @dm_per_bio_data(%struct.bio*, i32) #1

declare dso_local i32 @mempool_free(%struct.aead_request*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
