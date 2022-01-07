; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pio.c_sc_buffer_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pio.c_sc_buffer_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pio_buf = type { i64, %struct.TYPE_4__, i64, i64, i64, i64, %struct.send_context*, i8*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.send_context = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, %struct.TYPE_3__*, i32*, i32 }
%struct.TYPE_3__ = type { %struct.pio_buf }

@SCF_ENABLED = common dso_local global i32 0, align 4
@ECOMM = common dso_local global i32 0, align 4
@PIO_BLOCK_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pio_buf* @sc_buffer_alloc(%struct.send_context* %0, i64 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.pio_buf*, align 8
  %6 = alloca %struct.send_context*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.pio_buf*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.send_context* %0, %struct.send_context** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store %struct.pio_buf* null, %struct.pio_buf** %10, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i64 @dwords_to_blocks(i64 %18)
  store i64 %19, i64* %13, align 8
  store i32 0, i32* %15, align 4
  %20 = load %struct.send_context*, %struct.send_context** %6, align 8
  %21 = getelementptr inbounds %struct.send_context, %struct.send_context* %20, i32 0, i32 9
  %22 = load i64, i64* %11, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.send_context*, %struct.send_context** %6, align 8
  %25 = getelementptr inbounds %struct.send_context, %struct.send_context* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SCF_ENABLED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %4
  %31 = load %struct.send_context*, %struct.send_context** %6, align 8
  %32 = getelementptr inbounds %struct.send_context, %struct.send_context* %31, i32 0, i32 9
  %33 = load i64, i64* %11, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load i32, i32* @ECOMM, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.pio_buf* @ERR_PTR(i32 %36)
  store %struct.pio_buf* %37, %struct.pio_buf** %5, align 8
  br label %203

38:                                               ; preds = %4
  br label %39

39:                                               ; preds = %85, %38
  %40 = load %struct.send_context*, %struct.send_context** %6, align 8
  %41 = getelementptr inbounds %struct.send_context, %struct.send_context* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.send_context*, %struct.send_context** %6, align 8
  %44 = getelementptr inbounds %struct.send_context, %struct.send_context* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.send_context*, %struct.send_context** %6, align 8
  %47 = getelementptr inbounds %struct.send_context, %struct.send_context* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = sub i64 %45, %48
  %50 = sub i64 %42, %49
  store i64 %50, i64* %12, align 8
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* %12, align 8
  %53 = icmp ugt i64 %51, %52
  br i1 %53, label %54, label %98

54:                                               ; preds = %39
  %55 = load i32, i32* %15, align 4
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load %struct.send_context*, %struct.send_context** %6, align 8
  %60 = getelementptr inbounds %struct.send_context, %struct.send_context* %59, i32 0, i32 9
  %61 = load i64, i64* %11, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  br label %201

63:                                               ; preds = %54
  %64 = load %struct.send_context*, %struct.send_context** %6, align 8
  %65 = getelementptr inbounds %struct.send_context, %struct.send_context* %64, i32 0, i32 12
  %66 = load i32, i32* %65, align 8
  %67 = call i8* @READ_ONCE(i32 %66)
  %68 = ptrtoint i8* %67 to i64
  %69 = load %struct.send_context*, %struct.send_context** %6, align 8
  %70 = getelementptr inbounds %struct.send_context, %struct.send_context* %69, i32 0, i32 3
  store i64 %68, i64* %70, align 8
  %71 = load %struct.send_context*, %struct.send_context** %6, align 8
  %72 = getelementptr inbounds %struct.send_context, %struct.send_context* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.send_context*, %struct.send_context** %6, align 8
  %75 = getelementptr inbounds %struct.send_context, %struct.send_context* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.send_context*, %struct.send_context** %6, align 8
  %78 = getelementptr inbounds %struct.send_context, %struct.send_context* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = sub i64 %76, %79
  %81 = sub i64 %73, %80
  store i64 %81, i64* %12, align 8
  %82 = load i64, i64* %13, align 8
  %83 = load i64, i64* %12, align 8
  %84 = icmp ugt i64 %82, %83
  br i1 %84, label %85, label %97

85:                                               ; preds = %63
  %86 = load %struct.send_context*, %struct.send_context** %6, align 8
  %87 = call i32 @sc_release_update(%struct.send_context* %86)
  %88 = load %struct.send_context*, %struct.send_context** %6, align 8
  %89 = getelementptr inbounds %struct.send_context, %struct.send_context* %88, i32 0, i32 12
  %90 = load i32, i32* %89, align 8
  %91 = call i8* @READ_ONCE(i32 %90)
  %92 = ptrtoint i8* %91 to i64
  %93 = load %struct.send_context*, %struct.send_context** %6, align 8
  %94 = getelementptr inbounds %struct.send_context, %struct.send_context* %93, i32 0, i32 3
  store i64 %92, i64* %94, align 8
  %95 = load i32, i32* %15, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %15, align 4
  br label %39

97:                                               ; preds = %63
  br label %98

98:                                               ; preds = %97, %39
  %99 = call i32 (...) @preempt_disable()
  %100 = load %struct.send_context*, %struct.send_context** %6, align 8
  %101 = getelementptr inbounds %struct.send_context, %struct.send_context* %100, i32 0, i32 11
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @this_cpu_inc(i32 %103)
  %105 = load %struct.send_context*, %struct.send_context** %6, align 8
  %106 = getelementptr inbounds %struct.send_context, %struct.send_context* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %16, align 8
  %108 = load i64, i64* %13, align 8
  %109 = load %struct.send_context*, %struct.send_context** %6, align 8
  %110 = getelementptr inbounds %struct.send_context, %struct.send_context* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = add i64 %111, %108
  store i64 %112, i64* %110, align 8
  %113 = load %struct.send_context*, %struct.send_context** %6, align 8
  %114 = getelementptr inbounds %struct.send_context, %struct.send_context* %113, i32 0, i32 5
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %14, align 8
  %116 = load i64, i64* %13, align 8
  %117 = load %struct.send_context*, %struct.send_context** %6, align 8
  %118 = getelementptr inbounds %struct.send_context, %struct.send_context* %117, i32 0, i32 5
  %119 = load i64, i64* %118, align 8
  %120 = add i64 %119, %116
  store i64 %120, i64* %118, align 8
  %121 = load %struct.send_context*, %struct.send_context** %6, align 8
  %122 = getelementptr inbounds %struct.send_context, %struct.send_context* %121, i32 0, i32 5
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.send_context*, %struct.send_context** %6, align 8
  %125 = getelementptr inbounds %struct.send_context, %struct.send_context* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp uge i64 %123, %126
  br i1 %127, label %128, label %138

128:                                              ; preds = %98
  %129 = load %struct.send_context*, %struct.send_context** %6, align 8
  %130 = getelementptr inbounds %struct.send_context, %struct.send_context* %129, i32 0, i32 5
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.send_context*, %struct.send_context** %6, align 8
  %133 = getelementptr inbounds %struct.send_context, %struct.send_context* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = sub i64 %131, %134
  %136 = load %struct.send_context*, %struct.send_context** %6, align 8
  %137 = getelementptr inbounds %struct.send_context, %struct.send_context* %136, i32 0, i32 5
  store i64 %135, i64* %137, align 8
  br label %138

138:                                              ; preds = %128, %98
  %139 = load %struct.send_context*, %struct.send_context** %6, align 8
  %140 = getelementptr inbounds %struct.send_context, %struct.send_context* %139, i32 0, i32 10
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = load i64, i64* %16, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  store %struct.pio_buf* %144, %struct.pio_buf** %10, align 8
  %145 = load %struct.send_context*, %struct.send_context** %6, align 8
  %146 = getelementptr inbounds %struct.send_context, %struct.send_context* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.pio_buf*, %struct.pio_buf** %10, align 8
  %149 = getelementptr inbounds %struct.pio_buf, %struct.pio_buf* %148, i32 0, i32 0
  store i64 %147, i64* %149, align 8
  %150 = load i32, i32* %8, align 4
  %151 = load %struct.pio_buf*, %struct.pio_buf** %10, align 8
  %152 = getelementptr inbounds %struct.pio_buf, %struct.pio_buf* %151, i32 0, i32 8
  store i32 %150, i32* %152, align 8
  %153 = load i8*, i8** %9, align 8
  %154 = load %struct.pio_buf*, %struct.pio_buf** %10, align 8
  %155 = getelementptr inbounds %struct.pio_buf, %struct.pio_buf* %154, i32 0, i32 7
  store i8* %153, i8** %155, align 8
  %156 = load %struct.send_context*, %struct.send_context** %6, align 8
  %157 = load %struct.pio_buf*, %struct.pio_buf** %10, align 8
  %158 = getelementptr inbounds %struct.pio_buf, %struct.pio_buf* %157, i32 0, i32 6
  store %struct.send_context* %156, %struct.send_context** %158, align 8
  %159 = load i64, i64* %16, align 8
  %160 = add i64 %159, 1
  store i64 %160, i64* %17, align 8
  %161 = load i64, i64* %17, align 8
  %162 = load %struct.send_context*, %struct.send_context** %6, align 8
  %163 = getelementptr inbounds %struct.send_context, %struct.send_context* %162, i32 0, i32 6
  %164 = load i64, i64* %163, align 8
  %165 = icmp uge i64 %161, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %138
  store i64 0, i64* %17, align 8
  br label %167

167:                                              ; preds = %166, %138
  %168 = call i32 (...) @smp_wmb()
  %169 = load i64, i64* %17, align 8
  %170 = load %struct.send_context*, %struct.send_context** %6, align 8
  %171 = getelementptr inbounds %struct.send_context, %struct.send_context* %170, i32 0, i32 4
  store i64 %169, i64* %171, align 8
  %172 = load %struct.send_context*, %struct.send_context** %6, align 8
  %173 = getelementptr inbounds %struct.send_context, %struct.send_context* %172, i32 0, i32 9
  %174 = load i64, i64* %11, align 8
  %175 = call i32 @spin_unlock_irqrestore(i32* %173, i64 %174)
  %176 = load %struct.send_context*, %struct.send_context** %6, align 8
  %177 = getelementptr inbounds %struct.send_context, %struct.send_context* %176, i32 0, i32 8
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* %14, align 8
  %180 = load i64, i64* @PIO_BLOCK_SIZE, align 8
  %181 = mul i64 %179, %180
  %182 = add i64 %178, %181
  %183 = load %struct.pio_buf*, %struct.pio_buf** %10, align 8
  %184 = getelementptr inbounds %struct.pio_buf, %struct.pio_buf* %183, i32 0, i32 5
  store i64 %182, i64* %184, align 8
  %185 = load %struct.send_context*, %struct.send_context** %6, align 8
  %186 = getelementptr inbounds %struct.send_context, %struct.send_context* %185, i32 0, i32 8
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.send_context*, %struct.send_context** %6, align 8
  %189 = getelementptr inbounds %struct.send_context, %struct.send_context* %188, i32 0, i32 7
  %190 = load i64, i64* %189, align 8
  %191 = add nsw i64 %187, %190
  %192 = load %struct.pio_buf*, %struct.pio_buf** %10, align 8
  %193 = getelementptr inbounds %struct.pio_buf, %struct.pio_buf* %192, i32 0, i32 4
  store i64 %191, i64* %193, align 8
  %194 = load %struct.pio_buf*, %struct.pio_buf** %10, align 8
  %195 = getelementptr inbounds %struct.pio_buf, %struct.pio_buf* %194, i32 0, i32 3
  store i64 0, i64* %195, align 8
  %196 = load %struct.pio_buf*, %struct.pio_buf** %10, align 8
  %197 = getelementptr inbounds %struct.pio_buf, %struct.pio_buf* %196, i32 0, i32 2
  store i64 0, i64* %197, align 8
  %198 = load %struct.pio_buf*, %struct.pio_buf** %10, align 8
  %199 = getelementptr inbounds %struct.pio_buf, %struct.pio_buf* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 0
  store i64 0, i64* %200, align 8
  br label %201

201:                                              ; preds = %167, %58
  %202 = load %struct.pio_buf*, %struct.pio_buf** %10, align 8
  store %struct.pio_buf* %202, %struct.pio_buf** %5, align 8
  br label %203

203:                                              ; preds = %201, %30
  %204 = load %struct.pio_buf*, %struct.pio_buf** %5, align 8
  ret %struct.pio_buf* %204
}

declare dso_local i64 @dwords_to_blocks(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.pio_buf* @ERR_PTR(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @READ_ONCE(i32) #1

declare dso_local i32 @sc_release_update(%struct.send_context*) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @this_cpu_inc(i32) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
