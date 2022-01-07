; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_convert_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_convert_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypt_config = type { i64 }
%struct.convert_context = type { i32, i64, i32, i32, %struct.bio*, %struct.bio* }
%struct.bio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypt_config*, %struct.convert_context*, %struct.bio*, %struct.bio*, i64)* @crypt_convert_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypt_convert_init(%struct.crypt_config* %0, %struct.convert_context* %1, %struct.bio* %2, %struct.bio* %3, i64 %4) #0 {
  %6 = alloca %struct.crypt_config*, align 8
  %7 = alloca %struct.convert_context*, align 8
  %8 = alloca %struct.bio*, align 8
  %9 = alloca %struct.bio*, align 8
  %10 = alloca i64, align 8
  store %struct.crypt_config* %0, %struct.crypt_config** %6, align 8
  store %struct.convert_context* %1, %struct.convert_context** %7, align 8
  store %struct.bio* %2, %struct.bio** %8, align 8
  store %struct.bio* %3, %struct.bio** %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load %struct.bio*, %struct.bio** %9, align 8
  %12 = load %struct.convert_context*, %struct.convert_context** %7, align 8
  %13 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %12, i32 0, i32 5
  store %struct.bio* %11, %struct.bio** %13, align 8
  %14 = load %struct.bio*, %struct.bio** %8, align 8
  %15 = load %struct.convert_context*, %struct.convert_context** %7, align 8
  %16 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %15, i32 0, i32 4
  store %struct.bio* %14, %struct.bio** %16, align 8
  %17 = load %struct.bio*, %struct.bio** %9, align 8
  %18 = icmp ne %struct.bio* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %5
  %20 = load %struct.bio*, %struct.bio** %9, align 8
  %21 = getelementptr inbounds %struct.bio, %struct.bio* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.convert_context*, %struct.convert_context** %7, align 8
  %24 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %19, %5
  %26 = load %struct.bio*, %struct.bio** %8, align 8
  %27 = icmp ne %struct.bio* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load %struct.bio*, %struct.bio** %8, align 8
  %30 = getelementptr inbounds %struct.bio, %struct.bio* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.convert_context*, %struct.convert_context** %7, align 8
  %33 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %28, %25
  %35 = load i64, i64* %10, align 8
  %36 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %37 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = load %struct.convert_context*, %struct.convert_context** %7, align 8
  %41 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load %struct.convert_context*, %struct.convert_context** %7, align 8
  %43 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %42, i32 0, i32 0
  %44 = call i32 @init_completion(i32* %43)
  ret void
}

declare dso_local i32 @init_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
