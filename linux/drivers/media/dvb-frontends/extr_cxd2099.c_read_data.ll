; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2099.c_read_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2099.c_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ca_en50221 = type { %struct.cxd* }
%struct.cxd = type { i32*, i32, i64 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_ca_en50221*, i32, i32*, i32)* @read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_data(%struct.dvb_ca_en50221* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvb_ca_en50221*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cxd*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dvb_ca_en50221* %0, %struct.dvb_ca_en50221** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.dvb_ca_en50221*, %struct.dvb_ca_en50221** %6, align 8
  %15 = getelementptr inbounds %struct.dvb_ca_en50221, %struct.dvb_ca_en50221* %14, i32 0, i32 0
  %16 = load %struct.cxd*, %struct.cxd** %15, align 8
  store %struct.cxd* %16, %struct.cxd** %10, align 8
  %17 = load %struct.cxd*, %struct.cxd** %10, align 8
  %18 = getelementptr inbounds %struct.cxd, %struct.cxd* %17, i32 0, i32 1
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.cxd*, %struct.cxd** %10, align 8
  %21 = call i32 @campoll(%struct.cxd* %20)
  %22 = load %struct.cxd*, %struct.cxd** %10, align 8
  %23 = getelementptr inbounds %struct.cxd, %struct.cxd* %22, i32 0, i32 1
  %24 = call i32 @mutex_unlock(i32* %23)
  %25 = load %struct.cxd*, %struct.cxd** %10, align 8
  %26 = getelementptr inbounds %struct.cxd, %struct.cxd* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %71

30:                                               ; preds = %4
  %31 = load %struct.cxd*, %struct.cxd** %10, align 8
  %32 = getelementptr inbounds %struct.cxd, %struct.cxd* %31, i32 0, i32 1
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.cxd*, %struct.cxd** %10, align 8
  %35 = call i32 @read_reg(%struct.cxd* %34, i32 15, i32* %11)
  %36 = load %struct.cxd*, %struct.cxd** %10, align 8
  %37 = call i32 @read_reg(%struct.cxd* %36, i32 16, i32* %12)
  %38 = load i32, i32* %11, align 4
  %39 = shl i32 %38, 8
  %40 = load i32, i32* %12, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %48, label %45

45:                                               ; preds = %30
  %46 = load i32, i32* %13, align 4
  %47 = icmp slt i32 %46, 2
  br i1 %47, label %48, label %60

48:                                               ; preds = %45, %30
  %49 = load %struct.cxd*, %struct.cxd** %10, align 8
  %50 = load %struct.cxd*, %struct.cxd** %10, align 8
  %51 = getelementptr inbounds %struct.cxd, %struct.cxd* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @read_block(%struct.cxd* %49, i32 18, i32* %52, i32 %53)
  %55 = load %struct.cxd*, %struct.cxd** %10, align 8
  %56 = getelementptr inbounds %struct.cxd, %struct.cxd* %55, i32 0, i32 1
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %71

60:                                               ; preds = %45
  %61 = load %struct.cxd*, %struct.cxd** %10, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @read_block(%struct.cxd* %61, i32 18, i32* %62, i32 %63)
  %65 = load %struct.cxd*, %struct.cxd** %10, align 8
  %66 = getelementptr inbounds %struct.cxd, %struct.cxd* %65, i32 0, i32 2
  store i64 0, i64* %66, align 8
  %67 = load %struct.cxd*, %struct.cxd** %10, align 8
  %68 = getelementptr inbounds %struct.cxd, %struct.cxd* %67, i32 0, i32 1
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i32, i32* %13, align 4
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %60, %48, %29
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @campoll(%struct.cxd*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @read_reg(%struct.cxd*, i32, i32*) #1

declare dso_local i32 @read_block(%struct.cxd*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
