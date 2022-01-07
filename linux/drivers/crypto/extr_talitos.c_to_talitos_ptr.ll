; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_to_talitos_ptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_to_talitos_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.talitos_ptr = type { i32, i8*, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.talitos_ptr*, i32, i32, i32)* @to_talitos_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @to_talitos_ptr(%struct.talitos_ptr* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.talitos_ptr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.talitos_ptr* %0, %struct.talitos_ptr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @lower_32_bits(i32 %9)
  %11 = call i32 @cpu_to_be32(i32 %10)
  %12 = load %struct.talitos_ptr*, %struct.talitos_ptr** %5, align 8
  %13 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = call i8* @cpu_to_be16(i32 %17)
  %19 = load %struct.talitos_ptr*, %struct.talitos_ptr** %5, align 8
  %20 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  br label %30

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  %23 = call i8* @cpu_to_be16(i32 %22)
  %24 = load %struct.talitos_ptr*, %struct.talitos_ptr** %5, align 8
  %25 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @upper_32_bits(i32 %26)
  %28 = load %struct.talitos_ptr*, %struct.talitos_ptr** %5, align 8
  %29 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  br label %30

30:                                               ; preds = %21, %16
  ret void
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
