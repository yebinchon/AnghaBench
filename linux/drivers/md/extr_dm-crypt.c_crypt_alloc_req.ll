; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_alloc_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_alloc_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypt_config = type { i32 }
%struct.convert_context = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypt_config*, %struct.convert_context*)* @crypt_alloc_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypt_alloc_req(%struct.crypt_config* %0, %struct.convert_context* %1) #0 {
  %3 = alloca %struct.crypt_config*, align 8
  %4 = alloca %struct.convert_context*, align 8
  store %struct.crypt_config* %0, %struct.crypt_config** %3, align 8
  store %struct.convert_context* %1, %struct.convert_context** %4, align 8
  %5 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %6 = call i64 @crypt_integrity_aead(%struct.crypt_config* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %10 = load %struct.convert_context*, %struct.convert_context** %4, align 8
  %11 = call i32 @crypt_alloc_req_aead(%struct.crypt_config* %9, %struct.convert_context* %10)
  br label %16

12:                                               ; preds = %2
  %13 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %14 = load %struct.convert_context*, %struct.convert_context** %4, align 8
  %15 = call i32 @crypt_alloc_req_skcipher(%struct.crypt_config* %13, %struct.convert_context* %14)
  br label %16

16:                                               ; preds = %12, %8
  ret void
}

declare dso_local i64 @crypt_integrity_aead(%struct.crypt_config*) #1

declare dso_local i32 @crypt_alloc_req_aead(%struct.crypt_config*, %struct.convert_context*) #1

declare dso_local i32 @crypt_alloc_req_skcipher(%struct.crypt_config*, %struct.convert_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
