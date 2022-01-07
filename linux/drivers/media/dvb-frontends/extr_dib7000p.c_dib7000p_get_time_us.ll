; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7000p_get_time_us.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7000p_get_time_us.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties }
%struct.dtv_frontend_properties = type { i32, i32, i32, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dib7000p_get_time_us to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7000p_get_time_us(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %16 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %15, i32 0, i32 0
  store %struct.dtv_frontend_properties* %16, %struct.dtv_frontend_properties** %4, align 8
  store i32 1, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %17 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %18 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %23 [
    i32 135, label %20
    i32 134, label %21
    i32 137, label %22
    i32 136, label %24
  ]

20:                                               ; preds = %1
  store i32 4, i32* %9, align 4
  br label %25

21:                                               ; preds = %1
  store i32 8, i32* %9, align 4
  br label %25

22:                                               ; preds = %1
  store i32 16, i32* %9, align 4
  br label %25

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %1, %23
  store i32 32, i32* %9, align 4
  br label %25

25:                                               ; preds = %24, %22, %21, %20
  %26 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %27 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %31 [
    i32 130, label %29
    i32 129, label %30
    i32 128, label %32
  ]

29:                                               ; preds = %25
  store i32 4, i32* %14, align 4
  br label %33

30:                                               ; preds = %25
  store i32 2, i32* %14, align 4
  br label %33

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %25, %31
  store i32 1, i32* %14, align 4
  br label %33

33:                                               ; preds = %32, %30, %29
  %34 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %35 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %39 [
    i32 143, label %37
    i32 131, label %37
    i32 133, label %38
    i32 132, label %40
  ]

37:                                               ; preds = %33, %33
  store i32 2, i32* %12, align 4
  br label %41

38:                                               ; preds = %33
  store i32 4, i32* %12, align 4
  br label %41

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %33, %39
  store i32 6, i32* %12, align 4
  br label %41

41:                                               ; preds = %40, %38, %37
  %42 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %43 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  br i1 true, label %47, label %51

47:                                               ; preds = %46, %41
  %48 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %49 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  br label %55

51:                                               ; preds = %46
  %52 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %53 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  br label %55

55:                                               ; preds = %51, %47
  %56 = phi i32 [ %50, %47 ], [ %54, %51 ]
  switch i32 %56, label %61 [
    i32 142, label %57
    i32 141, label %58
    i32 140, label %59
    i32 139, label %60
    i32 138, label %62
  ]

57:                                               ; preds = %55
  store i32 1, i32* %10, align 4
  store i32 2, i32* %11, align 4
  br label %63

58:                                               ; preds = %55
  store i32 2, i32* %10, align 4
  store i32 3, i32* %11, align 4
  br label %63

59:                                               ; preds = %55
  store i32 3, i32* %10, align 4
  store i32 4, i32* %11, align 4
  br label %63

60:                                               ; preds = %55
  store i32 5, i32* %10, align 4
  store i32 6, i32* %11, align 4
  br label %63

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %55, %61
  store i32 7, i32* %10, align 4
  store i32 8, i32* %11, align 4
  br label %63

63:                                               ; preds = %62, %60, %59, %58, %57
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %10, align 4
  %66 = mul nsw i32 %64, %65
  %67 = load i32, i32* %14, align 4
  %68 = mul nsw i32 %66, %67
  %69 = mul nsw i32 %68, 384
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %102

73:                                               ; preds = %63
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = mul nsw i64 %75, 1575000000
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @do_div(i32 %79, i32 %80)
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %82, %83
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %8, align 4
  %86 = sdiv i32 %85, 2
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @do_div(i32 %89, i32 %90)
  %92 = load i32, i32* %13, align 4
  %93 = mul nsw i32 96768, %92
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %9, align 4
  %97 = sdiv i32 %95, %96
  %98 = add nsw i32 %94, %97
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %73, %72
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
