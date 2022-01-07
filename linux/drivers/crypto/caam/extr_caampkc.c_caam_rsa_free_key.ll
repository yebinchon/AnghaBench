; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caampkc.c_caam_rsa_free_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caampkc.c_caam_rsa_free_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.caam_rsa_key = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.caam_rsa_key*)* @caam_rsa_free_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @caam_rsa_free_key(%struct.caam_rsa_key* %0) #0 {
  %2 = alloca %struct.caam_rsa_key*, align 8
  store %struct.caam_rsa_key* %0, %struct.caam_rsa_key** %2, align 8
  %3 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %2, align 8
  %4 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %3, i32 0, i32 9
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @kzfree(i32 %5)
  %7 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %2, align 8
  %8 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %7, i32 0, i32 8
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @kzfree(i32 %9)
  %11 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %2, align 8
  %12 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @kzfree(i32 %13)
  %15 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %2, align 8
  %16 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @kzfree(i32 %17)
  %19 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %2, align 8
  %20 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @kzfree(i32 %21)
  %23 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %2, align 8
  %24 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @kzfree(i32 %25)
  %27 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %2, align 8
  %28 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @kzfree(i32 %29)
  %31 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %2, align 8
  %32 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @kzfree(i32 %33)
  %35 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %2, align 8
  %36 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @kfree(i32 %37)
  %39 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %2, align 8
  %40 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @kfree(i32 %41)
  %43 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %2, align 8
  %44 = call i32 @memset(%struct.caam_rsa_key* %43, i32 0, i32 40)
  ret void
}

declare dso_local i32 @kzfree(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @memset(%struct.caam_rsa_key*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
