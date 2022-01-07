; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-flexrm-mailbox.c_flexrm_write_descs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-flexrm-mailbox.c_flexrm_write_descs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcm_message = type { i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.brcm_message*, i32, i32, i8*, i32, i8*, i8*)* @flexrm_write_descs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @flexrm_write_descs(%struct.brcm_message* %0, i32 %1, i32 %2, i8* %3, i32 %4, i8* %5, i8* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca %struct.brcm_message*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.brcm_message* %0, %struct.brcm_message** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  %16 = load %struct.brcm_message*, %struct.brcm_message** %9, align 8
  %17 = icmp ne %struct.brcm_message* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %7
  %19 = load i8*, i8** %12, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i8*, i8** %14, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i8*, i8** %15, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %24, %21, %18, %7
  %28 = load i32, i32* @ENOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  %30 = call i8* @ERR_PTR(i32 %29)
  store i8* %30, i8** %8, align 8
  br label %69

31:                                               ; preds = %24
  %32 = load i8*, i8** %12, align 8
  %33 = load i8*, i8** %14, align 8
  %34 = icmp ult i8* %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i8*, i8** %15, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = icmp ule i8* %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35, %31
  %40 = load i32, i32* @ERANGE, align 4
  %41 = sub nsw i32 0, %40
  %42 = call i8* @ERR_PTR(i32 %41)
  store i8* %42, i8** %8, align 8
  br label %69

43:                                               ; preds = %35
  %44 = load %struct.brcm_message*, %struct.brcm_message** %9, align 8
  %45 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %65 [
    i32 128, label %47
    i32 129, label %56
  ]

47:                                               ; preds = %43
  %48 = load %struct.brcm_message*, %struct.brcm_message** %9, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i8*, i8** %12, align 8
  %52 = load i32, i32* %13, align 4
  %53 = load i8*, i8** %14, align 8
  %54 = load i8*, i8** %15, align 8
  %55 = call i8* @flexrm_spu_write_descs(%struct.brcm_message* %48, i32 %49, i32 %50, i8* %51, i32 %52, i8* %53, i8* %54)
  store i8* %55, i8** %8, align 8
  br label %69

56:                                               ; preds = %43
  %57 = load %struct.brcm_message*, %struct.brcm_message** %9, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i8*, i8** %12, align 8
  %61 = load i32, i32* %13, align 4
  %62 = load i8*, i8** %14, align 8
  %63 = load i8*, i8** %15, align 8
  %64 = call i8* @flexrm_sba_write_descs(%struct.brcm_message* %57, i32 %58, i32 %59, i8* %60, i32 %61, i8* %62, i8* %63)
  store i8* %64, i8** %8, align 8
  br label %69

65:                                               ; preds = %43
  %66 = load i32, i32* @ENOTSUPP, align 4
  %67 = sub nsw i32 0, %66
  %68 = call i8* @ERR_PTR(i32 %67)
  store i8* %68, i8** %8, align 8
  br label %69

69:                                               ; preds = %65, %56, %47, %39, %27
  %70 = load i8*, i8** %8, align 8
  ret i8* %70
}

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i8* @flexrm_spu_write_descs(%struct.brcm_message*, i32, i32, i8*, i32, i8*, i8*) #1

declare dso_local i8* @flexrm_sba_write_descs(%struct.brcm_message*, i32, i32, i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
