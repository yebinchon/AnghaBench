; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_get_sg_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_get_sg_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypt_config = type { i32 }
%struct.scatterlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scatterlist* (%struct.crypt_config*, %struct.scatterlist*)* @crypt_get_sg_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scatterlist* @crypt_get_sg_data(%struct.crypt_config* %0, %struct.scatterlist* %1) #0 {
  %3 = alloca %struct.scatterlist*, align 8
  %4 = alloca %struct.crypt_config*, align 8
  %5 = alloca %struct.scatterlist*, align 8
  store %struct.crypt_config* %0, %struct.crypt_config** %4, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %5, align 8
  %6 = load %struct.crypt_config*, %struct.crypt_config** %4, align 8
  %7 = call i32 @crypt_integrity_aead(%struct.crypt_config* %6)
  %8 = call i64 @unlikely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %12 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %11, i64 2
  store %struct.scatterlist* %12, %struct.scatterlist** %3, align 8
  br label %15

13:                                               ; preds = %2
  %14 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  store %struct.scatterlist* %14, %struct.scatterlist** %3, align 8
  br label %15

15:                                               ; preds = %13, %10
  %16 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  ret %struct.scatterlist* %16
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @crypt_integrity_aead(%struct.crypt_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
