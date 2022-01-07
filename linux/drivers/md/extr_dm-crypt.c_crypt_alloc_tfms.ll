; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_alloc_tfms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_alloc_tfms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypt_config = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypt_config*, i8*)* @crypt_alloc_tfms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypt_alloc_tfms(%struct.crypt_config* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypt_config*, align 8
  %5 = alloca i8*, align 8
  store %struct.crypt_config* %0, %struct.crypt_config** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.crypt_config*, %struct.crypt_config** %4, align 8
  %7 = call i64 @crypt_integrity_aead(%struct.crypt_config* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.crypt_config*, %struct.crypt_config** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @crypt_alloc_tfms_aead(%struct.crypt_config* %10, i8* %11)
  store i32 %12, i32* %3, align 4
  br label %17

13:                                               ; preds = %2
  %14 = load %struct.crypt_config*, %struct.crypt_config** %4, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @crypt_alloc_tfms_skcipher(%struct.crypt_config* %14, i8* %15)
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %13, %9
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i64 @crypt_integrity_aead(%struct.crypt_config*) #1

declare dso_local i32 @crypt_alloc_tfms_aead(%struct.crypt_config*, i8*) #1

declare dso_local i32 @crypt_alloc_tfms_skcipher(%struct.crypt_config*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
