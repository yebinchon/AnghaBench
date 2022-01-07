; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_init_pkeys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_init_pkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { %struct.TYPE_11__, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i32***, i32** }
%struct.TYPE_12__ = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_ib_dev*)* @init_pkeys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_pkeys(%struct.mlx4_ib_dev* %0) #0 {
  %2 = alloca %struct.mlx4_ib_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %2, align 8
  %6 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %7 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %6, i32 0, i32 1
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %9 = call i64 @mlx4_is_master(%struct.TYPE_12__* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %172

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %120, %11
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %15 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %14, i32 0, i32 1
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sle i32 %13, %20
  br i1 %21, label %22, label %123

22:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %23

23:                                               ; preds = %116, %22
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %26 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %25, i32 0, i32 1
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sle i32 %24, %30
  br i1 %31, label %32, label %119

32:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %112, %32
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %36 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %35, i32 0, i32 1
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %34, %44
  br i1 %45, label %46, label %115

46:                                               ; preds = %33
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %49 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %48, i32 0, i32 1
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = call i32 @mlx4_master_func_num(%struct.TYPE_12__* %50)
  %52 = icmp eq i32 %47, %51
  br i1 %52, label %56, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %53, %46
  %57 = load i32, i32* %5, align 4
  br label %70

58:                                               ; preds = %53
  %59 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %60 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %59, i32 0, i32 1
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %68, 1
  br label %70

70:                                               ; preds = %58, %56
  %71 = phi i32 [ %57, %56 ], [ %69, %58 ]
  %72 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %73 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i32***, i32**** %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32**, i32*** %75, i64 %77
  %79 = load i32**, i32*** %78, align 8
  %80 = load i32, i32* %3, align 4
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %79, i64 %82
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %71, i32* %87, align 4
  %88 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %89 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %88, i32 0, i32 1
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* %3, align 4
  %93 = load i32, i32* %5, align 4
  %94 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %95 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i32***, i32**** %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32**, i32*** %97, i64 %99
  %101 = load i32**, i32*** %100, align 8
  %102 = load i32, i32* %3, align 4
  %103 = sub nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32*, i32** %101, i64 %104
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @mlx4_sync_pkey_table(%struct.TYPE_12__* %90, i32 %91, i32 %92, i32 %93, i32 %110)
  br label %112

112:                                              ; preds = %70
  %113 = load i32, i32* %5, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %5, align 4
  br label %33

115:                                              ; preds = %33
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %3, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %3, align 4
  br label %23

119:                                              ; preds = %23
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %4, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %4, align 4
  br label %12

123:                                              ; preds = %12
  store i32 1, i32* %3, align 4
  br label %124

124:                                              ; preds = %168, %123
  %125 = load i32, i32* %3, align 4
  %126 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %127 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %126, i32 0, i32 1
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp sle i32 %125, %131
  br i1 %132, label %133, label %171

133:                                              ; preds = %124
  store i32 0, i32* %5, align 4
  br label %134

134:                                              ; preds = %164, %133
  %135 = load i32, i32* %5, align 4
  %136 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %137 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %136, i32 0, i32 1
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %3, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = icmp slt i32 %135, %145
  br i1 %146, label %147, label %167

147:                                              ; preds = %134
  %148 = load i32, i32* %5, align 4
  %149 = icmp ne i32 %148, 0
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i32 0, i32 65535
  %152 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %153 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 1
  %155 = load i32**, i32*** %154, align 8
  %156 = load i32, i32* %3, align 4
  %157 = sub nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32*, i32** %155, i64 %158
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %5, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  store i32 %151, i32* %163, align 4
  br label %164

164:                                              ; preds = %147
  %165 = load i32, i32* %5, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %5, align 4
  br label %134

167:                                              ; preds = %134
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %3, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %3, align 4
  br label %124

171:                                              ; preds = %124
  br label %172

172:                                              ; preds = %171, %1
  ret void
}

declare dso_local i64 @mlx4_is_master(%struct.TYPE_12__*) #1

declare dso_local i32 @mlx4_master_func_num(%struct.TYPE_12__*) #1

declare dso_local i32 @mlx4_sync_pkey_table(%struct.TYPE_12__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
