; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_set_layer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_set_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib8000_state = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { %struct.dtv_frontend_properties }
%struct.dtv_frontend_properties = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib8000_state*, i64, i32)* @dib8000_set_layer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib8000_set_layer(%struct.dib8000_state* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.dib8000_state*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.dtv_frontend_properties*, align 8
  store %struct.dib8000_state* %0, %struct.dib8000_state** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %12 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %13, i64 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.dtv_frontend_properties* %16, %struct.dtv_frontend_properties** %10, align 8
  %17 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %10, align 8
  %18 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %28 [
    i32 136, label %24
    i32 128, label %25
    i32 130, label %26
    i32 129, label %27
  ]

24:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  br label %29

25:                                               ; preds = %3
  store i64 1, i64* %8, align 8
  br label %29

26:                                               ; preds = %3
  store i64 2, i64* %8, align 8
  br label %29

27:                                               ; preds = %3
  br label %28

28:                                               ; preds = %3, %27
  store i64 3, i64* %8, align 8
  br label %29

29:                                               ; preds = %28, %26, %25, %24
  %30 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %10, align 8
  %31 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %42 [
    i32 135, label %37
    i32 134, label %38
    i32 133, label %39
    i32 132, label %40
    i32 131, label %41
  ]

37:                                               ; preds = %29
  store i64 1, i64* %7, align 8
  br label %43

38:                                               ; preds = %29
  store i64 2, i64* %7, align 8
  br label %43

39:                                               ; preds = %29
  store i64 3, i64* %7, align 8
  br label %43

40:                                               ; preds = %29
  store i64 5, i64* %7, align 8
  br label %43

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %29, %41
  store i64 7, i64* %7, align 8
  br label %43

43:                                               ; preds = %42, %40, %39, %38, %37
  %44 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %10, align 8
  %45 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @fls(i32 %50)
  store i64 %51, i64* %9, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp ugt i64 %52, 3
  br i1 %53, label %54, label %63

54:                                               ; preds = %43
  %55 = load i64, i64* %9, align 8
  %56 = icmp eq i64 %55, 4
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %10, align 8
  %59 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %63, label %62

62:                                               ; preds = %57, %54
  store i64 0, i64* %9, align 8
  br label %63

63:                                               ; preds = %62, %57, %43
  %64 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %65 = load i64, i64* %5, align 8
  %66 = add i64 2, %65
  %67 = trunc i64 %66 to i32
  %68 = load i64, i64* %8, align 8
  %69 = shl i64 %68, 10
  %70 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %10, align 8
  %71 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i64, i64* %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 15
  %78 = shl i32 %77, 6
  %79 = sext i32 %78 to i64
  %80 = or i64 %69, %79
  %81 = load i64, i64* %7, align 8
  %82 = shl i64 %81, 3
  %83 = or i64 %80, %82
  %84 = load i64, i64* %9, align 8
  %85 = or i64 %83, %84
  %86 = call i32 @dib8000_write_word(%struct.dib8000_state* %64, i32 %67, i64 %85)
  %87 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %10, align 8
  %88 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = load i64, i64* %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %143

95:                                               ; preds = %63
  %96 = load i32, i32* %6, align 4
  switch i32 %96, label %142 [
    i32 136, label %97
    i32 128, label %97
    i32 130, label %124
  ]

97:                                               ; preds = %95, %95
  %98 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %10, align 8
  %99 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %98, i32 0, i32 1
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = load i64, i64* %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 130
  br i1 %105, label %115, label %106

106:                                              ; preds = %97
  %107 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %10, align 8
  %108 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %107, i32 0, i32 1
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = load i64, i64* %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 129
  br i1 %114, label %115, label %123

115:                                              ; preds = %106, %97
  %116 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %10, align 8
  %117 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %116, i32 0, i32 1
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = load i64, i64* %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %115, %106
  br label %142

124:                                              ; preds = %95
  %125 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %10, align 8
  %126 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %125, i32 0, i32 1
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = load i64, i64* %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp eq i32 %131, 129
  br i1 %132, label %133, label %141

133:                                              ; preds = %124
  %134 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %10, align 8
  %135 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %134, i32 0, i32 1
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = load i64, i64* %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %6, align 4
  br label %141

141:                                              ; preds = %133, %124
  br label %142

142:                                              ; preds = %95, %141, %123
  br label %143

143:                                              ; preds = %142, %63
  %144 = load i32, i32* %6, align 4
  ret i32 %144
}

declare dso_local i64 @fls(i32) #1

declare dso_local i32 @dib8000_write_word(%struct.dib8000_state*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
