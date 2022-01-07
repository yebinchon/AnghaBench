; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24120.c_cx24120_writeregs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24120.c_cx24120_writeregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx24120_state = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.i2c_msg = type { i64, i64*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"i2c_write error(err == %i, 0x%02x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"reg=0x%02x; data=%*ph\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx24120_state*, i64, i64*, i64, i64)* @cx24120_writeregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24120_writeregs(%struct.cx24120_state* %0, i64 %1, i64* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cx24120_state*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.i2c_msg, align 8
  store %struct.cx24120_state* %0, %struct.cx24120_state** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.cx24120_state*, %struct.cx24120_state** %7, align 8
  %16 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %5
  %22 = load %struct.cx24120_state*, %struct.cx24120_state** %7, align 8
  %23 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  br label %29

27:                                               ; preds = %5
  %28 = load i64, i64* %10, align 8
  br label %29

29:                                               ; preds = %27, %21
  %30 = phi i64 [ %26, %21 ], [ %28, %27 ]
  store i64 %30, i64* %13, align 8
  %31 = bitcast %struct.i2c_msg* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %31, i8 0, i64 24, i1 false)
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 3
  %33 = load %struct.cx24120_state*, %struct.cx24120_state** %7, align 8
  %34 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %32, align 4
  %38 = load i64, i64* %13, align 8
  %39 = add nsw i64 %38, 1
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i64* @kmalloc(i64 %39, i32 %40)
  %42 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 1
  store i64* %41, i64** %42, align 8
  %43 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = icmp ne i64* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %29
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %123

49:                                               ; preds = %29
  br label %50

50:                                               ; preds = %104, %49
  %51 = load i64, i64* %10, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %117

53:                                               ; preds = %50
  %54 = load i64, i64* %8, align 8
  %55 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  store i64 %54, i64* %57, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* %13, align 8
  %60 = icmp sgt i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i64, i64* %13, align 8
  br label %65

63:                                               ; preds = %53
  %64 = load i64, i64* %10, align 8
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i64 [ %62, %61 ], [ %64, %63 ]
  %67 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 0
  store i64 %66, i64* %67, align 8
  %68 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 1
  %71 = load i64*, i64** %9, align 8
  %72 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @memcpy(i64* %70, i64* %71, i64 %73)
  %75 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %10, align 8
  %78 = sub nsw i64 %77, %76
  store i64 %78, i64* %10, align 8
  %79 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64*, i64** %9, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 %80
  store i64* %82, i64** %9, align 8
  %83 = load i64, i64* %11, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %65
  %86 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %8, align 8
  %89 = add nsw i64 %88, %87
  store i64 %89, i64* %8, align 8
  br label %90

90:                                               ; preds = %85, %65
  %91 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %91, align 8
  %94 = load %struct.cx24120_state*, %struct.cx24120_state** %7, align 8
  %95 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = call i32 @i2c_transfer(%struct.TYPE_4__* %96, %struct.i2c_msg* %14, i32 1)
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  %99 = icmp ne i32 %98, 1
  br i1 %99, label %100, label %104

100:                                              ; preds = %90
  %101 = load i32, i32* %12, align 4
  %102 = load i64, i64* %8, align 8
  %103 = call i32 @err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %101, i64 %102)
  br label %118

104:                                              ; preds = %90
  %105 = load %struct.cx24120_state*, %struct.cx24120_state** %7, align 8
  %106 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %105, i32 0, i32 0
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i64, i64* %8, align 8
  %110 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = sub nsw i64 %111, 1
  %113 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 1
  %114 = load i64*, i64** %113, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 1
  %116 = call i32 @dev_dbg(i32* %108, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %109, i64 %112, i64* %115)
  br label %50

117:                                              ; preds = %50
  store i32 0, i32* %12, align 4
  br label %118

118:                                              ; preds = %117, %100
  %119 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 1
  %120 = load i64*, i64** %119, align 8
  %121 = call i32 @kfree(i64* %120)
  %122 = load i32, i32* %12, align 4
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %118, %46
  %124 = load i32, i32* %6, align 4
  ret i32 %124
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64* @kmalloc(i64, i32) #2

declare dso_local i32 @memcpy(i64*, i64*, i64) #2

declare dso_local i32 @i2c_transfer(%struct.TYPE_4__*, %struct.i2c_msg*, i32) #2

declare dso_local i32 @err(i8*, i32, i64) #2

declare dso_local i32 @dev_dbg(i32*, i8*, i64, i64, i64*) #2

declare dso_local i32 @kfree(i64*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
